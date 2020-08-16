// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hero _$_$_HeroFromJson(Map<String, dynamic> json) {
  return _$_Hero(
    id: json['id'] as String,
    name: json['name'] as String,
    powerstats: json['powerstats'] == null
        ? null
        : PowerStats.fromJson(json['powerstats'] as Map<String, dynamic>),
    biography: json['biography'] == null
        ? null
        : Biography.fromJson(json['biography'] as Map<String, dynamic>),
    appearance: json['appearance'] == null
        ? null
        : Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
    work: json['work'] == null
        ? null
        : Work.fromJson(json['work'] as Map<String, dynamic>),
    connections: json['connections'] == null
        ? null
        : Connections.fromJson(json['connections'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : HeroImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_HeroToJson(_$_Hero instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'powerstats': instance.powerstats,
      'biography': instance.biography,
      'appearance': instance.appearance,
      'work': instance.work,
      'connections': instance.connections,
      'image': instance.image,
    };

_$_PowerStats _$_$_PowerStatsFromJson(Map<String, dynamic> json) {
  return _$_PowerStats(
    intelligence: json['intelligence'] as int,
    strength: json['strength'] as int,
    speed: json['speed'] as int,
    durability: json['durability'] as int,
    power: json['power'] as int,
    combat: json['combat'] as int,
  );
}

Map<String, dynamic> _$_$_PowerStatsToJson(_$_PowerStats instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };

_$_Biography _$_$_BiographyFromJson(Map<String, dynamic> json) {
  return _$_Biography(
    fullName: json['fullName'] as String,
    alterEgos: json['alterEgos'] as String,
    aliases: (json['aliases'] as List)?.map((e) => e as String)?.toList(),
    placeOfBirth: json['placeOfBirth'] as String,
    firstAppearance: json['firstAppearance'] as String,
    publisher: json['publisher'] as String,
    alignment: json['alignment'] as String,
  );
}

Map<String, dynamic> _$_$_BiographyToJson(_$_Biography instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'alterEgos': instance.alterEgos,
      'aliases': instance.aliases,
      'placeOfBirth': instance.placeOfBirth,
      'firstAppearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };

_$_Appearance _$_$_AppearanceFromJson(Map<String, dynamic> json) {
  return _$_Appearance(
    gender: json['gender'] as String,
    race: json['race'] as String,
    height: (json['height'] as List)?.map((e) => e as String)?.toList(),
    weight: (json['weight'] as List)?.map((e) => e as String)?.toList(),
    eyeColor: json['eyeColor'] as String,
    hairColor: json['hairColor'] as String,
  );
}

Map<String, dynamic> _$_$_AppearanceToJson(_$_Appearance instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'hairColor': instance.hairColor,
    };

_$_Work _$_$_WorkFromJson(Map<String, dynamic> json) {
  return _$_Work(
    occupation: json['occupation'] as String,
    base: json['base'] as String,
  );
}

Map<String, dynamic> _$_$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'occupation': instance.occupation,
      'base': instance.base,
    };

_$_Connections _$_$_ConnectionsFromJson(Map<String, dynamic> json) {
  return _$_Connections(
    groupAffiliation: json['groupAffiliation'] as String,
    relatives: json['relatives'] as String,
  );
}

Map<String, dynamic> _$_$_ConnectionsToJson(_$_Connections instance) =>
    <String, dynamic>{
      'groupAffiliation': instance.groupAffiliation,
      'relatives': instance.relatives,
    };

_$_HeroImage _$_$_HeroImageFromJson(Map<String, dynamic> json) {
  return _$_HeroImage(
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_HeroImageToJson(_$_HeroImage instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
