// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectStateImpl _$$ProjectStateImplFromJson(Map<String, dynamic> json) =>
    _$ProjectStateImpl(
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
      completion:
          Completion.fromJson(json['completion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectStateImplToJson(_$ProjectStateImpl instance) =>
    <String, dynamic>{
      'project': instance.project,
      'completion': instance.completion,
    };
