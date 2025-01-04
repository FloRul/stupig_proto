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
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'reward': instance.reward,
    };

_$ProjectBoardStateImpl _$$ProjectBoardStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectBoardStateImpl(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectBoardStateImplToJson(
        _$ProjectBoardStateImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };
