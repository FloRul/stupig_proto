// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      reward: ProjectReward.fromJson(json['reward'] as Map<String, dynamic>),
      type: $enumDecode(_$ProjectTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'reward': instance.reward,
      'type': _$ProjectTypeEnumMap[instance.type]!,
    };

const _$ProjectTypeEnumMap = {
  ProjectType.learning: 'learning',
  ProjectType.design: 'design',
  ProjectType.implementation: 'implementation',
  ProjectType.optimization: 'optimization',
};
