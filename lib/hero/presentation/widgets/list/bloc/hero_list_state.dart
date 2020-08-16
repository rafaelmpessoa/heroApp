part of 'hero_list_bloc.dart';

@freezed
abstract class HeroListState with _$HeroListState {
  const factory HeroListState({
    @required List<Hero> heroes,
    @required bool isLoading,
    String error,
  }) = _HeroListState;

  factory HeroListState.initial() => _HeroListState(
        heroes: [],
        isLoading: false,
      );
}
