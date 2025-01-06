// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondaryResourceStateImpl _$$SecondaryResourceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondaryResourceStateImpl(
      techSkills: (json['techSkills'] as num).toDouble(),
      devTools: (json['devTools'] as num).toDouble(),
      hardware: (json['hardware'] as num).toDouble(),
      focusPoints: (json['focusPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$SecondaryResourceStateImplToJson(
        _$SecondaryResourceStateImpl instance) =>
    <String, dynamic>{
      'techSkills': instance.techSkills,
      'devTools': instance.devTools,
      'hardware': instance.hardware,
      'focusPoints': instance.focusPoints,
    };
