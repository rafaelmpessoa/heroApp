import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hero_app/common/domain/converter/converter.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/hero/domain/usecases/get_heroes_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'hero_list_event.dart';
part 'hero_list_state.dart';
part 'hero_list_bloc.freezed.dart';

@injectable
class HeroListBloc extends Bloc<HeroListEvent, HeroListState> {
  final GetHeroesUseCase getHeroesUseCase;
  HeroListBloc(this.getHeroesUseCase) : super(HeroListState.initial());

  @override
  Stream<Transition<HeroListEvent, HeroListState>> transformEvents(
      Stream<HeroListEvent> events,
      TransitionFunction<HeroListEvent, HeroListState> transitionFn) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 300)),
      transitionFn,
    );
  }

  @override
  Stream<HeroListState> mapEventToState(
    HeroListEvent event,
  ) async* {
    yield state.copyWith(isLoading: true);

    yield* event.map(
      onInit: (_) => _mapEventToFetch(),
      onSearch: (e) => _mapEventToFetch(
        name: e.name,
        powerStatsFilter: e.powerStatsFilter,
      ),
    );
  }

  Stream<HeroListState> _mapEventToFetch(
      {String name = "a", PowerStats powerStatsFilter}) async* {
    final result = await getHeroesUseCase(
      name: name,
      powerStats: powerStatsFilter,
    );

    yield* result.fold(_mapEventToFailure, _mapEventToSuccess);
  }

  Stream<HeroListState> _mapEventToFailure(Failures failures) async* {
    yield state.copyWith(
        isLoading: false, error: Converter.failureInString(failures));
  }

  Stream<HeroListState> _mapEventToSuccess(List<Hero> heroes) async* {
    yield state.copyWith(
      isLoading: false,
      error: null,
      heroes: heroes,
    );
  }
}
