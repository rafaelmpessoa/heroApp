import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hero_app/common/domain/converter/converter.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/common/presentation/widgets/base_scaffold.dart';
import 'package:hero_app/hero/presentation/widgets/list/bloc/hero_list_bloc.dart';
import 'package:hero_app/hero/presentation/widgets/list/hero_list.dart';
import 'package:hero_app/injection.dart';
import 'package:hero_app/strings.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shimmer/shimmer.dart';

import '../helper/teste_helper.dart';

class MockHeroListBloc extends MockBloc<HeroListState> implements HeroListBloc {
}

void main() {
  HeroListBloc bloc;

  configureDependencies(
    env: bool.fromEnvironment('dart.vm.product') == true
        ? Environment.prod
        : Environment.dev,
  );

  setUp(() {
    bloc = MockHeroListBloc();
  });

  group("Heroes list", () {
    testWidgets("Load Heroes", (tester) async {
      when(bloc.state).thenReturn(
        HeroListState(
          heroes: mockedHeroes,
          isLoading: false,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BaseScaffold(
            body: BlocProvider.value(
              value: bloc,
              child: HeroList(),
            ),
          ),
        ),
      );

      expect(find.text("Mocked Hero Name"), findsOneWidget);
      expect(find.text("Mocked Hero Name 2"), findsOneWidget);
    });

    testWidgets("Loading Heros", (tester) async {
      when(bloc.state).thenReturn(
        HeroListState(
          heroes: [],
          isLoading: true,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BaseScaffold(
            body: BlocProvider.value(
              value: bloc,
              child: HeroList(),
            ),
          ),
        ),
      );

      expect(find.byType(Shimmer), findsWidgets);
    });

    testWidgets("Error Heros", (tester) async {
      when(bloc.state).thenReturn(
        HeroListState(
            heroes: [],
            isLoading: false,
            error: Converter.failureInString(
                Failures.unexpectedValue(failedValue: "TESTE ERROR"))),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BaseScaffold(
            body: BlocProvider.value(
              value: bloc,
              child: HeroList(),
            ),
          ),
        ),
      );

      expect(find.text(Strings.unexpectedError), findsOneWidget);
    });
  });
}
