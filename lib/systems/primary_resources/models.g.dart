// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourcesStateImpl _$$ResourcesStateImplFromJson(Map<String, dynamic> json) =>
    _$ResourcesStateImpl(
      xp: (json['xp'] as num).toInt(),
      money: (json['money'] as num).toInt(),
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$$ResourcesStateImplToJson(
        _$ResourcesStateImpl instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'money': instance.money,
      'level': instance.level,
    };
