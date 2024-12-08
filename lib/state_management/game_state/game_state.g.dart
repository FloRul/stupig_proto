// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateImpl _$$GameStateImplFromJson(Map<String, dynamic> json) =>
    _$GameStateImpl(
      xp: (json['xp'] as num).toDouble(),
      level: (json['level'] as num).toInt(),
      money: (json['money'] as num).toDouble(),
      cpuPower: (json['cpuPower'] as num).toDouble(),
      gpuVram: (json['gpuVram'] as num).toDouble(),
      ram: (json['ram'] as num).toDouble(),
      cpuSpeed: (json['cpuSpeed'] as num).toDouble(),
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameStateImplToJson(_$GameStateImpl instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'level': instance.level,
      'money': instance.money,
      'cpuPower': instance.cpuPower,
      'gpuVram': instance.gpuVram,
      'ram': instance.ram,
      'cpuSpeed': instance.cpuSpeed,
      'projects': instance.projects,
    };
