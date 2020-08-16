import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';
part 'hero.g.dart';

//TODO: pq eu declaro como factory?
@freezed
abstract class Hero with _$Hero {
  const factory Hero({
    @required String id,
    @required String name,
    PowerStats powerstats,
    @required Biography biography,
    Appearance appearance,
    Work work,
    Connections connections,
    HeroImage image,
  }) = _Hero;

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);
}

@freezed
abstract class PowerStats with _$PowerStats {
  const factory PowerStats({
    int intelligence,
    int strength,
    int speed,
    int durability,
    int power,
    int combat,
  }) = _PowerStats;

  factory PowerStats.fromJson(Map<String, dynamic> json) => PowerStats(
        intelligence: int.parse(
            json['intelligence'] == "null" ? "0" : json['intelligence']),
        strength:
            int.parse(json['strength'] == "null" ? "0" : json['strength']),
        speed: int.parse(json['speed'] == "null" ? "0" : json['speed']),
        durability:
            int.parse(json['durability'] == "null" ? "0" : json['durability']),
        power: int.parse(json['power'] == "null" ? "0" : json['power']),
        combat: int.parse(json['combat'] == "null" ? "0" : json['combat']),
      );
}

@freezed
abstract class Biography with _$Biography {
  const factory Biography({
    String fullName,
    String alterEgos,
    List<String> aliases,
    String placeOfBirth,
    String firstAppearance,
    String publisher,
    String alignment,
  }) = _Biography;

  factory Biography.fromJson(Map<String, dynamic> json) =>
      _$BiographyFromJson(json).copyWith(
        fullName: json['full-name'] as String,
        alterEgos: json['alter-egos'] as String,
        placeOfBirth: json['place-of-birth'] as String,
        firstAppearance: json['first-appearance'] as String,
      );
}

@freezed
abstract class Appearance with _$Appearance {
  const factory Appearance({
    String gender,
    String race,
    List<String> height,
    List<String> weight,
    String eyeColor,
    String hairColor,
  }) = _Appearance;

  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json).copyWith(
        hairColor: json['hair-color'] as String,
        eyeColor: json['eye-color'] as String,
      );
}

@freezed
abstract class Work with _$Work {
  const factory Work({
    String occupation,
    String base,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}

@freezed
abstract class Connections with _$Connections {
  const factory Connections({
    String groupAffiliation,
    String relatives,
  }) = _Connections;

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json).copyWith(
        groupAffiliation: json['group-affiliation'] as String,
      );
}

@freezed
abstract class HeroImage with _$HeroImage {
  const factory HeroImage({
    String url,
  }) = _HeroImage;

  factory HeroImage.fromJson(Map<String, dynamic> json) =>
      _$HeroImageFromJson(json);
}
