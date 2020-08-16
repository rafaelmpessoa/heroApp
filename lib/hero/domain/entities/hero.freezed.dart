// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Hero _$HeroFromJson(Map<String, dynamic> json) {
  return _Hero.fromJson(json);
}

class _$HeroTearOff {
  const _$HeroTearOff();

// ignore: unused_element
  _Hero call(
      {@required String id,
      @required String name,
      PowerStats powerstats,
      @required Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      HeroImage image}) {
    return _Hero(
      id: id,
      name: name,
      powerstats: powerstats,
      biography: biography,
      appearance: appearance,
      work: work,
      connections: connections,
      image: image,
    );
  }
}

// ignore: unused_element
const $Hero = _$HeroTearOff();

mixin _$Hero {
  String get id;
  String get name;
  PowerStats get powerstats;
  Biography get biography;
  Appearance get appearance;
  Work get work;
  Connections get connections;
  HeroImage get image;

  Map<String, dynamic> toJson();
  $HeroCopyWith<Hero> get copyWith;
}

abstract class $HeroCopyWith<$Res> {
  factory $HeroCopyWith(Hero value, $Res Function(Hero) then) =
      _$HeroCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      PowerStats powerstats,
      Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      HeroImage image});

  $PowerStatsCopyWith<$Res> get powerstats;
  $BiographyCopyWith<$Res> get biography;
  $AppearanceCopyWith<$Res> get appearance;
  $WorkCopyWith<$Res> get work;
  $ConnectionsCopyWith<$Res> get connections;
  $HeroImageCopyWith<$Res> get image;
}

class _$HeroCopyWithImpl<$Res> implements $HeroCopyWith<$Res> {
  _$HeroCopyWithImpl(this._value, this._then);

  final Hero _value;
  // ignore: unused_field
  final $Res Function(Hero) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object powerstats = freezed,
    Object biography = freezed,
    Object appearance = freezed,
    Object work = freezed,
    Object connections = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      powerstats:
          powerstats == freezed ? _value.powerstats : powerstats as PowerStats,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      appearance:
          appearance == freezed ? _value.appearance : appearance as Appearance,
      work: work == freezed ? _value.work : work as Work,
      connections: connections == freezed
          ? _value.connections
          : connections as Connections,
      image: image == freezed ? _value.image : image as HeroImage,
    ));
  }

  @override
  $PowerStatsCopyWith<$Res> get powerstats {
    if (_value.powerstats == null) {
      return null;
    }
    return $PowerStatsCopyWith<$Res>(_value.powerstats, (value) {
      return _then(_value.copyWith(powerstats: value));
    });
  }

  @override
  $BiographyCopyWith<$Res> get biography {
    if (_value.biography == null) {
      return null;
    }
    return $BiographyCopyWith<$Res>(_value.biography, (value) {
      return _then(_value.copyWith(biography: value));
    });
  }

  @override
  $AppearanceCopyWith<$Res> get appearance {
    if (_value.appearance == null) {
      return null;
    }
    return $AppearanceCopyWith<$Res>(_value.appearance, (value) {
      return _then(_value.copyWith(appearance: value));
    });
  }

  @override
  $WorkCopyWith<$Res> get work {
    if (_value.work == null) {
      return null;
    }
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }

  @override
  $ConnectionsCopyWith<$Res> get connections {
    if (_value.connections == null) {
      return null;
    }
    return $ConnectionsCopyWith<$Res>(_value.connections, (value) {
      return _then(_value.copyWith(connections: value));
    });
  }

  @override
  $HeroImageCopyWith<$Res> get image {
    if (_value.image == null) {
      return null;
    }
    return $HeroImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

abstract class _$HeroCopyWith<$Res> implements $HeroCopyWith<$Res> {
  factory _$HeroCopyWith(_Hero value, $Res Function(_Hero) then) =
      __$HeroCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      PowerStats powerstats,
      Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      HeroImage image});

  @override
  $PowerStatsCopyWith<$Res> get powerstats;
  @override
  $BiographyCopyWith<$Res> get biography;
  @override
  $AppearanceCopyWith<$Res> get appearance;
  @override
  $WorkCopyWith<$Res> get work;
  @override
  $ConnectionsCopyWith<$Res> get connections;
  @override
  $HeroImageCopyWith<$Res> get image;
}

class __$HeroCopyWithImpl<$Res> extends _$HeroCopyWithImpl<$Res>
    implements _$HeroCopyWith<$Res> {
  __$HeroCopyWithImpl(_Hero _value, $Res Function(_Hero) _then)
      : super(_value, (v) => _then(v as _Hero));

  @override
  _Hero get _value => super._value as _Hero;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object powerstats = freezed,
    Object biography = freezed,
    Object appearance = freezed,
    Object work = freezed,
    Object connections = freezed,
    Object image = freezed,
  }) {
    return _then(_Hero(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      powerstats:
          powerstats == freezed ? _value.powerstats : powerstats as PowerStats,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      appearance:
          appearance == freezed ? _value.appearance : appearance as Appearance,
      work: work == freezed ? _value.work : work as Work,
      connections: connections == freezed
          ? _value.connections
          : connections as Connections,
      image: image == freezed ? _value.image : image as HeroImage,
    ));
  }
}

@JsonSerializable()
class _$_Hero implements _Hero {
  const _$_Hero(
      {@required this.id,
      @required this.name,
      this.powerstats,
      @required this.biography,
      this.appearance,
      this.work,
      this.connections,
      this.image})
      : assert(id != null),
        assert(name != null),
        assert(biography != null);

  factory _$_Hero.fromJson(Map<String, dynamic> json) =>
      _$_$_HeroFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final PowerStats powerstats;
  @override
  final Biography biography;
  @override
  final Appearance appearance;
  @override
  final Work work;
  @override
  final Connections connections;
  @override
  final HeroImage image;

  @override
  String toString() {
    return 'Hero(id: $id, name: $name, powerstats: $powerstats, biography: $biography, appearance: $appearance, work: $work, connections: $connections, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hero &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.powerstats, powerstats) ||
                const DeepCollectionEquality()
                    .equals(other.powerstats, powerstats)) &&
            (identical(other.biography, biography) ||
                const DeepCollectionEquality()
                    .equals(other.biography, biography)) &&
            (identical(other.appearance, appearance) ||
                const DeepCollectionEquality()
                    .equals(other.appearance, appearance)) &&
            (identical(other.work, work) ||
                const DeepCollectionEquality().equals(other.work, work)) &&
            (identical(other.connections, connections) ||
                const DeepCollectionEquality()
                    .equals(other.connections, connections)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(powerstats) ^
      const DeepCollectionEquality().hash(biography) ^
      const DeepCollectionEquality().hash(appearance) ^
      const DeepCollectionEquality().hash(work) ^
      const DeepCollectionEquality().hash(connections) ^
      const DeepCollectionEquality().hash(image);

  @override
  _$HeroCopyWith<_Hero> get copyWith =>
      __$HeroCopyWithImpl<_Hero>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeroToJson(this);
  }
}

abstract class _Hero implements Hero {
  const factory _Hero(
      {@required String id,
      @required String name,
      PowerStats powerstats,
      @required Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      HeroImage image}) = _$_Hero;

  factory _Hero.fromJson(Map<String, dynamic> json) = _$_Hero.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  PowerStats get powerstats;
  @override
  Biography get biography;
  @override
  Appearance get appearance;
  @override
  Work get work;
  @override
  Connections get connections;
  @override
  HeroImage get image;
  @override
  _$HeroCopyWith<_Hero> get copyWith;
}

PowerStats _$PowerStatsFromJson(Map<String, dynamic> json) {
  return _PowerStats.fromJson(json);
}

class _$PowerStatsTearOff {
  const _$PowerStatsTearOff();

// ignore: unused_element
  _PowerStats call(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat}) {
    return _PowerStats(
      intelligence: intelligence,
      strength: strength,
      speed: speed,
      durability: durability,
      power: power,
      combat: combat,
    );
  }
}

// ignore: unused_element
const $PowerStats = _$PowerStatsTearOff();

mixin _$PowerStats {
  int get intelligence;
  int get strength;
  int get speed;
  int get durability;
  int get power;
  int get combat;

  Map<String, dynamic> toJson();
  $PowerStatsCopyWith<PowerStats> get copyWith;
}

abstract class $PowerStatsCopyWith<$Res> {
  factory $PowerStatsCopyWith(
          PowerStats value, $Res Function(PowerStats) then) =
      _$PowerStatsCopyWithImpl<$Res>;
  $Res call(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat});
}

class _$PowerStatsCopyWithImpl<$Res> implements $PowerStatsCopyWith<$Res> {
  _$PowerStatsCopyWithImpl(this._value, this._then);

  final PowerStats _value;
  // ignore: unused_field
  final $Res Function(PowerStats) _then;

  @override
  $Res call({
    Object intelligence = freezed,
    Object strength = freezed,
    Object speed = freezed,
    Object durability = freezed,
    Object power = freezed,
    Object combat = freezed,
  }) {
    return _then(_value.copyWith(
      intelligence:
          intelligence == freezed ? _value.intelligence : intelligence as int,
      strength: strength == freezed ? _value.strength : strength as int,
      speed: speed == freezed ? _value.speed : speed as int,
      durability: durability == freezed ? _value.durability : durability as int,
      power: power == freezed ? _value.power : power as int,
      combat: combat == freezed ? _value.combat : combat as int,
    ));
  }
}

abstract class _$PowerStatsCopyWith<$Res> implements $PowerStatsCopyWith<$Res> {
  factory _$PowerStatsCopyWith(
          _PowerStats value, $Res Function(_PowerStats) then) =
      __$PowerStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat});
}

class __$PowerStatsCopyWithImpl<$Res> extends _$PowerStatsCopyWithImpl<$Res>
    implements _$PowerStatsCopyWith<$Res> {
  __$PowerStatsCopyWithImpl(
      _PowerStats _value, $Res Function(_PowerStats) _then)
      : super(_value, (v) => _then(v as _PowerStats));

  @override
  _PowerStats get _value => super._value as _PowerStats;

  @override
  $Res call({
    Object intelligence = freezed,
    Object strength = freezed,
    Object speed = freezed,
    Object durability = freezed,
    Object power = freezed,
    Object combat = freezed,
  }) {
    return _then(_PowerStats(
      intelligence:
          intelligence == freezed ? _value.intelligence : intelligence as int,
      strength: strength == freezed ? _value.strength : strength as int,
      speed: speed == freezed ? _value.speed : speed as int,
      durability: durability == freezed ? _value.durability : durability as int,
      power: power == freezed ? _value.power : power as int,
      combat: combat == freezed ? _value.combat : combat as int,
    ));
  }
}

@JsonSerializable()
class _$_PowerStats implements _PowerStats {
  const _$_PowerStats(
      {this.intelligence,
      this.strength,
      this.speed,
      this.durability,
      this.power,
      this.combat});

  factory _$_PowerStats.fromJson(Map<String, dynamic> json) =>
      _$_$_PowerStatsFromJson(json);

  @override
  final int intelligence;
  @override
  final int strength;
  @override
  final int speed;
  @override
  final int durability;
  @override
  final int power;
  @override
  final int combat;

  @override
  String toString() {
    return 'PowerStats(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PowerStats &&
            (identical(other.intelligence, intelligence) ||
                const DeepCollectionEquality()
                    .equals(other.intelligence, intelligence)) &&
            (identical(other.strength, strength) ||
                const DeepCollectionEquality()
                    .equals(other.strength, strength)) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)) &&
            (identical(other.durability, durability) ||
                const DeepCollectionEquality()
                    .equals(other.durability, durability)) &&
            (identical(other.power, power) ||
                const DeepCollectionEquality().equals(other.power, power)) &&
            (identical(other.combat, combat) ||
                const DeepCollectionEquality().equals(other.combat, combat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(intelligence) ^
      const DeepCollectionEquality().hash(strength) ^
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(durability) ^
      const DeepCollectionEquality().hash(power) ^
      const DeepCollectionEquality().hash(combat);

  @override
  _$PowerStatsCopyWith<_PowerStats> get copyWith =>
      __$PowerStatsCopyWithImpl<_PowerStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PowerStatsToJson(this);
  }
}

abstract class _PowerStats implements PowerStats {
  const factory _PowerStats(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat}) = _$_PowerStats;

  factory _PowerStats.fromJson(Map<String, dynamic> json) =
      _$_PowerStats.fromJson;

  @override
  int get intelligence;
  @override
  int get strength;
  @override
  int get speed;
  @override
  int get durability;
  @override
  int get power;
  @override
  int get combat;
  @override
  _$PowerStatsCopyWith<_PowerStats> get copyWith;
}

Biography _$BiographyFromJson(Map<String, dynamic> json) {
  return _Biography.fromJson(json);
}

class _$BiographyTearOff {
  const _$BiographyTearOff();

// ignore: unused_element
  _Biography call(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment}) {
    return _Biography(
      fullName: fullName,
      alterEgos: alterEgos,
      aliases: aliases,
      placeOfBirth: placeOfBirth,
      firstAppearance: firstAppearance,
      publisher: publisher,
      alignment: alignment,
    );
  }
}

// ignore: unused_element
const $Biography = _$BiographyTearOff();

mixin _$Biography {
  String get fullName;
  String get alterEgos;
  List<String> get aliases;
  String get placeOfBirth;
  String get firstAppearance;
  String get publisher;
  String get alignment;

  Map<String, dynamic> toJson();
  $BiographyCopyWith<Biography> get copyWith;
}

abstract class $BiographyCopyWith<$Res> {
  factory $BiographyCopyWith(Biography value, $Res Function(Biography) then) =
      _$BiographyCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment});
}

class _$BiographyCopyWithImpl<$Res> implements $BiographyCopyWith<$Res> {
  _$BiographyCopyWithImpl(this._value, this._then);

  final Biography _value;
  // ignore: unused_field
  final $Res Function(Biography) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object alterEgos = freezed,
    Object aliases = freezed,
    Object placeOfBirth = freezed,
    Object firstAppearance = freezed,
    Object publisher = freezed,
    Object alignment = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      alterEgos: alterEgos == freezed ? _value.alterEgos : alterEgos as String,
      aliases: aliases == freezed ? _value.aliases : aliases as List<String>,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth as String,
      firstAppearance: firstAppearance == freezed
          ? _value.firstAppearance
          : firstAppearance as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      alignment: alignment == freezed ? _value.alignment : alignment as String,
    ));
  }
}

abstract class _$BiographyCopyWith<$Res> implements $BiographyCopyWith<$Res> {
  factory _$BiographyCopyWith(
          _Biography value, $Res Function(_Biography) then) =
      __$BiographyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment});
}

class __$BiographyCopyWithImpl<$Res> extends _$BiographyCopyWithImpl<$Res>
    implements _$BiographyCopyWith<$Res> {
  __$BiographyCopyWithImpl(_Biography _value, $Res Function(_Biography) _then)
      : super(_value, (v) => _then(v as _Biography));

  @override
  _Biography get _value => super._value as _Biography;

  @override
  $Res call({
    Object fullName = freezed,
    Object alterEgos = freezed,
    Object aliases = freezed,
    Object placeOfBirth = freezed,
    Object firstAppearance = freezed,
    Object publisher = freezed,
    Object alignment = freezed,
  }) {
    return _then(_Biography(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      alterEgos: alterEgos == freezed ? _value.alterEgos : alterEgos as String,
      aliases: aliases == freezed ? _value.aliases : aliases as List<String>,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth as String,
      firstAppearance: firstAppearance == freezed
          ? _value.firstAppearance
          : firstAppearance as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      alignment: alignment == freezed ? _value.alignment : alignment as String,
    ));
  }
}

@JsonSerializable()
class _$_Biography implements _Biography {
  const _$_Biography(
      {this.fullName,
      this.alterEgos,
      this.aliases,
      this.placeOfBirth,
      this.firstAppearance,
      this.publisher,
      this.alignment});

  factory _$_Biography.fromJson(Map<String, dynamic> json) =>
      _$_$_BiographyFromJson(json);

  @override
  final String fullName;
  @override
  final String alterEgos;
  @override
  final List<String> aliases;
  @override
  final String placeOfBirth;
  @override
  final String firstAppearance;
  @override
  final String publisher;
  @override
  final String alignment;

  @override
  String toString() {
    return 'Biography(fullName: $fullName, alterEgos: $alterEgos, aliases: $aliases, placeOfBirth: $placeOfBirth, firstAppearance: $firstAppearance, publisher: $publisher, alignment: $alignment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Biography &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.alterEgos, alterEgos) ||
                const DeepCollectionEquality()
                    .equals(other.alterEgos, alterEgos)) &&
            (identical(other.aliases, aliases) ||
                const DeepCollectionEquality()
                    .equals(other.aliases, aliases)) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.placeOfBirth, placeOfBirth)) &&
            (identical(other.firstAppearance, firstAppearance) ||
                const DeepCollectionEquality()
                    .equals(other.firstAppearance, firstAppearance)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.alignment, alignment) ||
                const DeepCollectionEquality()
                    .equals(other.alignment, alignment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(alterEgos) ^
      const DeepCollectionEquality().hash(aliases) ^
      const DeepCollectionEquality().hash(placeOfBirth) ^
      const DeepCollectionEquality().hash(firstAppearance) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(alignment);

  @override
  _$BiographyCopyWith<_Biography> get copyWith =>
      __$BiographyCopyWithImpl<_Biography>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BiographyToJson(this);
  }
}

abstract class _Biography implements Biography {
  const factory _Biography(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment}) = _$_Biography;

  factory _Biography.fromJson(Map<String, dynamic> json) =
      _$_Biography.fromJson;

  @override
  String get fullName;
  @override
  String get alterEgos;
  @override
  List<String> get aliases;
  @override
  String get placeOfBirth;
  @override
  String get firstAppearance;
  @override
  String get publisher;
  @override
  String get alignment;
  @override
  _$BiographyCopyWith<_Biography> get copyWith;
}

Appearance _$AppearanceFromJson(Map<String, dynamic> json) {
  return _Appearance.fromJson(json);
}

class _$AppearanceTearOff {
  const _$AppearanceTearOff();

// ignore: unused_element
  _Appearance call(
      {String gender,
      String race,
      List<String> height,
      List<String> weight,
      String eyeColor,
      String hairColor}) {
    return _Appearance(
      gender: gender,
      race: race,
      height: height,
      weight: weight,
      eyeColor: eyeColor,
      hairColor: hairColor,
    );
  }
}

// ignore: unused_element
const $Appearance = _$AppearanceTearOff();

mixin _$Appearance {
  String get gender;
  String get race;
  List<String> get height;
  List<String> get weight;
  String get eyeColor;
  String get hairColor;

  Map<String, dynamic> toJson();
  $AppearanceCopyWith<Appearance> get copyWith;
}

abstract class $AppearanceCopyWith<$Res> {
  factory $AppearanceCopyWith(
          Appearance value, $Res Function(Appearance) then) =
      _$AppearanceCopyWithImpl<$Res>;
  $Res call(
      {String gender,
      String race,
      List<String> height,
      List<String> weight,
      String eyeColor,
      String hairColor});
}

class _$AppearanceCopyWithImpl<$Res> implements $AppearanceCopyWith<$Res> {
  _$AppearanceCopyWithImpl(this._value, this._then);

  final Appearance _value;
  // ignore: unused_field
  final $Res Function(Appearance) _then;

  @override
  $Res call({
    Object gender = freezed,
    Object race = freezed,
    Object height = freezed,
    Object weight = freezed,
    Object eyeColor = freezed,
    Object hairColor = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed ? _value.gender : gender as String,
      race: race == freezed ? _value.race : race as String,
      height: height == freezed ? _value.height : height as List<String>,
      weight: weight == freezed ? _value.weight : weight as List<String>,
      eyeColor: eyeColor == freezed ? _value.eyeColor : eyeColor as String,
      hairColor: hairColor == freezed ? _value.hairColor : hairColor as String,
    ));
  }
}

abstract class _$AppearanceCopyWith<$Res> implements $AppearanceCopyWith<$Res> {
  factory _$AppearanceCopyWith(
          _Appearance value, $Res Function(_Appearance) then) =
      __$AppearanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gender,
      String race,
      List<String> height,
      List<String> weight,
      String eyeColor,
      String hairColor});
}

class __$AppearanceCopyWithImpl<$Res> extends _$AppearanceCopyWithImpl<$Res>
    implements _$AppearanceCopyWith<$Res> {
  __$AppearanceCopyWithImpl(
      _Appearance _value, $Res Function(_Appearance) _then)
      : super(_value, (v) => _then(v as _Appearance));

  @override
  _Appearance get _value => super._value as _Appearance;

  @override
  $Res call({
    Object gender = freezed,
    Object race = freezed,
    Object height = freezed,
    Object weight = freezed,
    Object eyeColor = freezed,
    Object hairColor = freezed,
  }) {
    return _then(_Appearance(
      gender: gender == freezed ? _value.gender : gender as String,
      race: race == freezed ? _value.race : race as String,
      height: height == freezed ? _value.height : height as List<String>,
      weight: weight == freezed ? _value.weight : weight as List<String>,
      eyeColor: eyeColor == freezed ? _value.eyeColor : eyeColor as String,
      hairColor: hairColor == freezed ? _value.hairColor : hairColor as String,
    ));
  }
}

@JsonSerializable()
class _$_Appearance implements _Appearance {
  const _$_Appearance(
      {this.gender,
      this.race,
      this.height,
      this.weight,
      this.eyeColor,
      this.hairColor});

  factory _$_Appearance.fromJson(Map<String, dynamic> json) =>
      _$_$_AppearanceFromJson(json);

  @override
  final String gender;
  @override
  final String race;
  @override
  final List<String> height;
  @override
  final List<String> weight;
  @override
  final String eyeColor;
  @override
  final String hairColor;

  @override
  String toString() {
    return 'Appearance(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Appearance &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.eyeColor, eyeColor) ||
                const DeepCollectionEquality()
                    .equals(other.eyeColor, eyeColor)) &&
            (identical(other.hairColor, hairColor) ||
                const DeepCollectionEquality()
                    .equals(other.hairColor, hairColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(eyeColor) ^
      const DeepCollectionEquality().hash(hairColor);

  @override
  _$AppearanceCopyWith<_Appearance> get copyWith =>
      __$AppearanceCopyWithImpl<_Appearance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppearanceToJson(this);
  }
}

abstract class _Appearance implements Appearance {
  const factory _Appearance(
      {String gender,
      String race,
      List<String> height,
      List<String> weight,
      String eyeColor,
      String hairColor}) = _$_Appearance;

  factory _Appearance.fromJson(Map<String, dynamic> json) =
      _$_Appearance.fromJson;

  @override
  String get gender;
  @override
  String get race;
  @override
  List<String> get height;
  @override
  List<String> get weight;
  @override
  String get eyeColor;
  @override
  String get hairColor;
  @override
  _$AppearanceCopyWith<_Appearance> get copyWith;
}

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

class _$WorkTearOff {
  const _$WorkTearOff();

// ignore: unused_element
  _Work call({String occupation, String base}) {
    return _Work(
      occupation: occupation,
      base: base,
    );
  }
}

// ignore: unused_element
const $Work = _$WorkTearOff();

mixin _$Work {
  String get occupation;
  String get base;

  Map<String, dynamic> toJson();
  $WorkCopyWith<Work> get copyWith;
}

abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call({String occupation, String base});
}

class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  final Work _value;
  // ignore: unused_field
  final $Res Function(Work) _then;

  @override
  $Res call({
    Object occupation = freezed,
    Object base = freezed,
  }) {
    return _then(_value.copyWith(
      occupation:
          occupation == freezed ? _value.occupation : occupation as String,
      base: base == freezed ? _value.base : base as String,
    ));
  }
}

abstract class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
  @override
  $Res call({String occupation, String base});
}

class __$WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(_Work _value, $Res Function(_Work) _then)
      : super(_value, (v) => _then(v as _Work));

  @override
  _Work get _value => super._value as _Work;

  @override
  $Res call({
    Object occupation = freezed,
    Object base = freezed,
  }) {
    return _then(_Work(
      occupation:
          occupation == freezed ? _value.occupation : occupation as String,
      base: base == freezed ? _value.base : base as String,
    ));
  }
}

@JsonSerializable()
class _$_Work implements _Work {
  const _$_Work({this.occupation, this.base});

  factory _$_Work.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkFromJson(json);

  @override
  final String occupation;
  @override
  final String base;

  @override
  String toString() {
    return 'Work(occupation: $occupation, base: $base)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Work &&
            (identical(other.occupation, occupation) ||
                const DeepCollectionEquality()
                    .equals(other.occupation, occupation)) &&
            (identical(other.base, base) ||
                const DeepCollectionEquality().equals(other.base, base)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(occupation) ^
      const DeepCollectionEquality().hash(base);

  @override
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkToJson(this);
  }
}

abstract class _Work implements Work {
  const factory _Work({String occupation, String base}) = _$_Work;

  factory _Work.fromJson(Map<String, dynamic> json) = _$_Work.fromJson;

  @override
  String get occupation;
  @override
  String get base;
  @override
  _$WorkCopyWith<_Work> get copyWith;
}

Connections _$ConnectionsFromJson(Map<String, dynamic> json) {
  return _Connections.fromJson(json);
}

class _$ConnectionsTearOff {
  const _$ConnectionsTearOff();

// ignore: unused_element
  _Connections call({String groupAffiliation, String relatives}) {
    return _Connections(
      groupAffiliation: groupAffiliation,
      relatives: relatives,
    );
  }
}

// ignore: unused_element
const $Connections = _$ConnectionsTearOff();

mixin _$Connections {
  String get groupAffiliation;
  String get relatives;

  Map<String, dynamic> toJson();
  $ConnectionsCopyWith<Connections> get copyWith;
}

abstract class $ConnectionsCopyWith<$Res> {
  factory $ConnectionsCopyWith(
          Connections value, $Res Function(Connections) then) =
      _$ConnectionsCopyWithImpl<$Res>;
  $Res call({String groupAffiliation, String relatives});
}

class _$ConnectionsCopyWithImpl<$Res> implements $ConnectionsCopyWith<$Res> {
  _$ConnectionsCopyWithImpl(this._value, this._then);

  final Connections _value;
  // ignore: unused_field
  final $Res Function(Connections) _then;

  @override
  $Res call({
    Object groupAffiliation = freezed,
    Object relatives = freezed,
  }) {
    return _then(_value.copyWith(
      groupAffiliation: groupAffiliation == freezed
          ? _value.groupAffiliation
          : groupAffiliation as String,
      relatives: relatives == freezed ? _value.relatives : relatives as String,
    ));
  }
}

abstract class _$ConnectionsCopyWith<$Res>
    implements $ConnectionsCopyWith<$Res> {
  factory _$ConnectionsCopyWith(
          _Connections value, $Res Function(_Connections) then) =
      __$ConnectionsCopyWithImpl<$Res>;
  @override
  $Res call({String groupAffiliation, String relatives});
}

class __$ConnectionsCopyWithImpl<$Res> extends _$ConnectionsCopyWithImpl<$Res>
    implements _$ConnectionsCopyWith<$Res> {
  __$ConnectionsCopyWithImpl(
      _Connections _value, $Res Function(_Connections) _then)
      : super(_value, (v) => _then(v as _Connections));

  @override
  _Connections get _value => super._value as _Connections;

  @override
  $Res call({
    Object groupAffiliation = freezed,
    Object relatives = freezed,
  }) {
    return _then(_Connections(
      groupAffiliation: groupAffiliation == freezed
          ? _value.groupAffiliation
          : groupAffiliation as String,
      relatives: relatives == freezed ? _value.relatives : relatives as String,
    ));
  }
}

@JsonSerializable()
class _$_Connections implements _Connections {
  const _$_Connections({this.groupAffiliation, this.relatives});

  factory _$_Connections.fromJson(Map<String, dynamic> json) =>
      _$_$_ConnectionsFromJson(json);

  @override
  final String groupAffiliation;
  @override
  final String relatives;

  @override
  String toString() {
    return 'Connections(groupAffiliation: $groupAffiliation, relatives: $relatives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connections &&
            (identical(other.groupAffiliation, groupAffiliation) ||
                const DeepCollectionEquality()
                    .equals(other.groupAffiliation, groupAffiliation)) &&
            (identical(other.relatives, relatives) ||
                const DeepCollectionEquality()
                    .equals(other.relatives, relatives)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupAffiliation) ^
      const DeepCollectionEquality().hash(relatives);

  @override
  _$ConnectionsCopyWith<_Connections> get copyWith =>
      __$ConnectionsCopyWithImpl<_Connections>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConnectionsToJson(this);
  }
}

abstract class _Connections implements Connections {
  const factory _Connections({String groupAffiliation, String relatives}) =
      _$_Connections;

  factory _Connections.fromJson(Map<String, dynamic> json) =
      _$_Connections.fromJson;

  @override
  String get groupAffiliation;
  @override
  String get relatives;
  @override
  _$ConnectionsCopyWith<_Connections> get copyWith;
}

HeroImage _$HeroImageFromJson(Map<String, dynamic> json) {
  return _HeroImage.fromJson(json);
}

class _$HeroImageTearOff {
  const _$HeroImageTearOff();

// ignore: unused_element
  _HeroImage call({String url}) {
    return _HeroImage(
      url: url,
    );
  }
}

// ignore: unused_element
const $HeroImage = _$HeroImageTearOff();

mixin _$HeroImage {
  String get url;

  Map<String, dynamic> toJson();
  $HeroImageCopyWith<HeroImage> get copyWith;
}

abstract class $HeroImageCopyWith<$Res> {
  factory $HeroImageCopyWith(HeroImage value, $Res Function(HeroImage) then) =
      _$HeroImageCopyWithImpl<$Res>;
  $Res call({String url});
}

class _$HeroImageCopyWithImpl<$Res> implements $HeroImageCopyWith<$Res> {
  _$HeroImageCopyWithImpl(this._value, this._then);

  final HeroImage _value;
  // ignore: unused_field
  final $Res Function(HeroImage) _then;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$HeroImageCopyWith<$Res> implements $HeroImageCopyWith<$Res> {
  factory _$HeroImageCopyWith(
          _HeroImage value, $Res Function(_HeroImage) then) =
      __$HeroImageCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

class __$HeroImageCopyWithImpl<$Res> extends _$HeroImageCopyWithImpl<$Res>
    implements _$HeroImageCopyWith<$Res> {
  __$HeroImageCopyWithImpl(_HeroImage _value, $Res Function(_HeroImage) _then)
      : super(_value, (v) => _then(v as _HeroImage));

  @override
  _HeroImage get _value => super._value as _HeroImage;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_HeroImage(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_HeroImage implements _HeroImage {
  const _$_HeroImage({this.url});

  factory _$_HeroImage.fromJson(Map<String, dynamic> json) =>
      _$_$_HeroImageFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'HeroImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeroImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$HeroImageCopyWith<_HeroImage> get copyWith =>
      __$HeroImageCopyWithImpl<_HeroImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeroImageToJson(this);
  }
}

abstract class _HeroImage implements HeroImage {
  const factory _HeroImage({String url}) = _$_HeroImage;

  factory _HeroImage.fromJson(Map<String, dynamic> json) =
      _$_HeroImage.fromJson;

  @override
  String get url;
  @override
  _$HeroImageCopyWith<_HeroImage> get copyWith;
}
