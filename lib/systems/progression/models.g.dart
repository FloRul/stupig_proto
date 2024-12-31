// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      name: json['name'] as String,
      subthemes: (json['subthemes'] as List<dynamic>)
          .map((e) => Subtheme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subthemes': instance.subthemes,
    };

_$SubthemeImpl _$$SubthemeImplFromJson(Map<String, dynamic> json) =>
    _$SubthemeImpl(
      name: json['name'] as String,
      concepts: (json['concepts'] as List<dynamic>)
          .map((e) => Concept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubthemeImplToJson(_$SubthemeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'concepts': instance.concepts,
    };

_$ConceptImpl _$$ConceptImplFromJson(Map<String, dynamic> json) =>
    _$ConceptImpl(
      name: json['name'] as String,
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
      unlocked: json['unlocked'] as bool,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ConceptImplToJson(_$ConceptImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'unlocked': instance.unlocked,
      'content': instance.content,
    };

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.uncommon: 'uncommon',
  Rarity.rare: 'rare',
  Rarity.epic: 'epic',
  Rarity.legendary: 'legendary',
};

_$FlashCardImpl _$$FlashCardImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardImpl(
      concept: Concept.fromJson(json['concept'] as Map<String, dynamic>),
      bonus: json['bonus'] as String,
    );

Map<String, dynamic> _$$FlashCardImplToJson(_$FlashCardImpl instance) =>
    <String, dynamic>{
      'concept': instance.concept,
      'bonus': instance.bonus,
    };
