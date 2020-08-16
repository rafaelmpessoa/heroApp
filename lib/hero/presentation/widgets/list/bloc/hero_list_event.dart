part of 'hero_list_bloc.dart';

@freezed
abstract class HeroListEvent with _$HeroListEvent {
  const factory HeroListEvent.onInit() = _OnInit;
  const factory HeroListEvent.onSearch(
      {@required String name,
      @required PowerStats powerStatsFilter}) = _OnSearch;
}
