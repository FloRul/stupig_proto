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
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$ProjectsStateImpl _$$ProjectsStateImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsStateImpl(
      inactiveProjects: (json['inactiveProjects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeProjects: (json['activeProjects'] as List<dynamic>)
          .map((e) => ActiveProjectState.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedProjects: (json['completedProjects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectsStateImplToJson(_$ProjectsStateImpl instance) =>
    <String, dynamic>{
      'inactiveProjects': instance.inactiveProjects,
      'activeProjects': instance.activeProjects,
      'completedProjects': instance.completedProjects,
    };
