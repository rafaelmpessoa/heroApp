// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hero_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HeroListEventTearOff {
  const _$HeroListEventTearOff();

// ignore: unused_element
  _OnInit onInit() {
    return const _OnInit();
  }

// ignore: unused_element
  _OnSearch onSearch(
      {@required String name, @required PowerStats powerStatsFilter}) {
    return _OnSearch(
      name: name,
      powerStatsFilter: powerStatsFilter,
    );
  }
}

// ignore: unused_element
const $HeroListEvent = _$HeroListEventTearOff();

mixin _$HeroListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onInit(),
    @required Result onSearch(String name, PowerStats powerStatsFilter),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onInit(),
    Result onSearch(String name, PowerStats powerStatsFilter),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onInit(_OnInit value),
    @required Result onSearch(_OnSearch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onInit(_OnInit value),
    Result onSearch(_OnSearch value),
    @required Result orElse(),
  });
}

abstract class $HeroListEventCopyWith<$Res> {
  factory $HeroListEventCopyWith(
          HeroListEvent value, $Res Function(HeroListEvent) then) =
      _$HeroListEventCopyWithImpl<$Res>;
}

class _$HeroListEventCopyWithImpl<$Res>
    implements $HeroListEventCopyWith<$Res> {
  _$HeroListEventCopyWithImpl(this._value, this._then);

  final HeroListEvent _value;
  // ignore: unused_field
  final $Res Function(HeroListEvent) _then;
}

abstract class _$OnInitCopyWith<$Res> {
  factory _$OnInitCopyWith(_OnInit value, $Res Function(_OnInit) then) =
      __$OnInitCopyWithImpl<$Res>;
}

class __$OnInitCopyWithImpl<$Res> extends _$HeroListEventCopyWithImpl<$Res>
    implements _$OnInitCopyWith<$Res> {
  __$OnInitCopyWithImpl(_OnInit _value, $Res Function(_OnInit) _then)
      : super(_value, (v) => _then(v as _OnInit));

  @override
  _OnInit get _value => super._value as _OnInit;
}

class _$_OnInit implements _OnInit {
  const _$_OnInit();

  @override
  String toString() {
    return 'HeroListEvent.onInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onInit(),
    @required Result onSearch(String name, PowerStats powerStatsFilter),
  }) {
    assert(onInit != null);
    assert(onSearch != null);
    return onInit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onInit(),
    Result onSearch(String name, PowerStats powerStatsFilter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onInit != null) {
      return onInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onInit(_OnInit value),
    @required Result onSearch(_OnSearch value),
  }) {
    assert(onInit != null);
    assert(onSearch != null);
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onInit(_OnInit value),
    Result onSearch(_OnSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _OnInit implements HeroListEvent {
  const factory _OnInit() = _$_OnInit;
}

abstract class _$OnSearchCopyWith<$Res> {
  factory _$OnSearchCopyWith(_OnSearch value, $Res Function(_OnSearch) then) =
      __$OnSearchCopyWithImpl<$Res>;
  $Res call({String name, PowerStats powerStatsFilter});

  $PowerStatsCopyWith<$Res> get powerStatsFilter;
}

class __$OnSearchCopyWithImpl<$Res> extends _$HeroListEventCopyWithImpl<$Res>
    implements _$OnSearchCopyWith<$Res> {
  __$OnSearchCopyWithImpl(_OnSearch _value, $Res Function(_OnSearch) _then)
      : super(_value, (v) => _then(v as _OnSearch));

  @override
  _OnSearch get _value => super._value as _OnSearch;

  @override
  $Res call({
    Object name = freezed,
    Object powerStatsFilter = freezed,
  }) {
    return _then(_OnSearch(
      name: name == freezed ? _value.name : name as String,
      powerStatsFilter: powerStatsFilter == freezed
          ? _value.powerStatsFilter
          : powerStatsFilter as PowerStats,
    ));
  }

  @override
  $PowerStatsCopyWith<$Res> get powerStatsFilter {
    if (_value.powerStatsFilter == null) {
      return null;
    }
    return $PowerStatsCopyWith<$Res>(_value.powerStatsFilter, (value) {
      return _then(_value.copyWith(powerStatsFilter: value));
    });
  }
}

class _$_OnSearch implements _OnSearch {
  const _$_OnSearch({@required this.name, @required this.powerStatsFilter})
      : assert(name != null),
        assert(powerStatsFilter != null);

  @override
  final String name;
  @override
  final PowerStats powerStatsFilter;

  @override
  String toString() {
    return 'HeroListEvent.onSearch(name: $name, powerStatsFilter: $powerStatsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.powerStatsFilter, powerStatsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.powerStatsFilter, powerStatsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(powerStatsFilter);

  @override
  _$OnSearchCopyWith<_OnSearch> get copyWith =>
      __$OnSearchCopyWithImpl<_OnSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onInit(),
    @required Result onSearch(String name, PowerStats powerStatsFilter),
  }) {
    assert(onInit != null);
    assert(onSearch != null);
    return onSearch(name, powerStatsFilter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onInit(),
    Result onSearch(String name, PowerStats powerStatsFilter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSearch != null) {
      return onSearch(name, powerStatsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onInit(_OnInit value),
    @required Result onSearch(_OnSearch value),
  }) {
    assert(onInit != null);
    assert(onSearch != null);
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onInit(_OnInit value),
    Result onSearch(_OnSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class _OnSearch implements HeroListEvent {
  const factory _OnSearch(
      {@required String name,
      @required PowerStats powerStatsFilter}) = _$_OnSearch;

  String get name;
  PowerStats get powerStatsFilter;
  _$OnSearchCopyWith<_OnSearch> get copyWith;
}

class _$HeroListStateTearOff {
  const _$HeroListStateTearOff();

// ignore: unused_element
  _HeroListState call(
      {@required List<Hero> heroes, @required bool isLoading, String error}) {
    return _HeroListState(
      heroes: heroes,
      isLoading: isLoading,
      error: error,
    );
  }
}

// ignore: unused_element
const $HeroListState = _$HeroListStateTearOff();

mixin _$HeroListState {
  List<Hero> get heroes;
  bool get isLoading;
  String get error;

  $HeroListStateCopyWith<HeroListState> get copyWith;
}

abstract class $HeroListStateCopyWith<$Res> {
  factory $HeroListStateCopyWith(
          HeroListState value, $Res Function(HeroListState) then) =
      _$HeroListStateCopyWithImpl<$Res>;
  $Res call({List<Hero> heroes, bool isLoading, String error});
}

class _$HeroListStateCopyWithImpl<$Res>
    implements $HeroListStateCopyWith<$Res> {
  _$HeroListStateCopyWithImpl(this._value, this._then);

  final HeroListState _value;
  // ignore: unused_field
  final $Res Function(HeroListState) _then;

  @override
  $Res call({
    Object heroes = freezed,
    Object isLoading = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      heroes: heroes == freezed ? _value.heroes : heroes as List<Hero>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

abstract class _$HeroListStateCopyWith<$Res>
    implements $HeroListStateCopyWith<$Res> {
  factory _$HeroListStateCopyWith(
          _HeroListState value, $Res Function(_HeroListState) then) =
      __$HeroListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Hero> heroes, bool isLoading, String error});
}

class __$HeroListStateCopyWithImpl<$Res>
    extends _$HeroListStateCopyWithImpl<$Res>
    implements _$HeroListStateCopyWith<$Res> {
  __$HeroListStateCopyWithImpl(
      _HeroListState _value, $Res Function(_HeroListState) _then)
      : super(_value, (v) => _then(v as _HeroListState));

  @override
  _HeroListState get _value => super._value as _HeroListState;

  @override
  $Res call({
    Object heroes = freezed,
    Object isLoading = freezed,
    Object error = freezed,
  }) {
    return _then(_HeroListState(
      heroes: heroes == freezed ? _value.heroes : heroes as List<Hero>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$_HeroListState implements _HeroListState {
  const _$_HeroListState(
      {@required this.heroes, @required this.isLoading, this.error})
      : assert(heroes != null),
        assert(isLoading != null);

  @override
  final List<Hero> heroes;
  @override
  final bool isLoading;
  @override
  final String error;

  @override
  String toString() {
    return 'HeroListState(heroes: $heroes, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeroListState &&
            (identical(other.heroes, heroes) ||
                const DeepCollectionEquality().equals(other.heroes, heroes)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heroes) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$HeroListStateCopyWith<_HeroListState> get copyWith =>
      __$HeroListStateCopyWithImpl<_HeroListState>(this, _$identity);
}

abstract class _HeroListState implements HeroListState {
  const factory _HeroListState(
      {@required List<Hero> heroes,
      @required bool isLoading,
      String error}) = _$_HeroListState;

  @override
  List<Hero> get heroes;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  _$HeroListStateCopyWith<_HeroListState> get copyWith;
}
