// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceStateImpl _$$ExperienceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceStateImpl(
      xp: (json['xp'] as num).toInt(),
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$$ExperienceStateImplToJson(
        _$ExperienceStateImpl instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'level': instance.level,
    };
