import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hero_app/common/domain/converter/converter.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/usecases/get_heroes_use_case.dart';
import 'package:hero_app/hero/presentation/widgets/list/bloc/hero_list_bloc.dart';
import 'package:mockito/mockito.dart';

import '../helper/teste_helper.dart';

class MockGetHeroesUseCase extends Mock implements GetHeroesUseCase {}

void main() {
  MockGetHeroesUseCase mockGetHeroesUseCase;
  HeroListBloc bloc;

  group(
    "HeroListBloc",
    () {
      setUp(() {
        mockGetHeroesUseCase = MockGetHeroesUseCase();
        bloc = HeroListBloc(mockGetHeroesUseCase);
      });

      blocTest<HeroListBloc, HeroListState>(
        "success load heroes",
        build: () {
          when(mockGetHeroesUseCase(
            name: anyNamed("name"),
            powerStats: anyNamed("powerStats"),
          )).thenAnswer(
            (_) async => right(mockedHeroes),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          HeroListEvent.onInit(),
        ),
        wait: const Duration(milliseconds: 300),
        expect: [
          HeroListState(heroes: [], isLoading: true),
          HeroListState(heroes: mockedHeroes, isLoading: false),
        ],
      );

      blocTest<HeroListBloc, HeroListState>(
        "error in load heroes",
        build: () {
          when(mockGetHeroesUseCase(
            name: anyNamed("name"),
            powerStats: anyNamed("powerStats"),
          )).thenAnswer(
            (_) async =>
                left(Failures.unexpectedValue(failedValue: "bloc test")),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          HeroListEvent.onInit(),
        ),
        wait: const Duration(milliseconds: 300),
        expect: [
          HeroListState(heroes: [], isLoading: true),
          HeroListState(
            heroes: [],
            isLoading: false,
            error: Converter.failureInString(
              Failures.unexpectedValue(failedValue: "bloc test"),
            ),
          ),
        ],
      );
    },
  );
}
