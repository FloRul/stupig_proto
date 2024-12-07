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
      activeProjects: (json['activeProjects'] as List<dynamic>)
          .map((e) => ActiveProject.fromJson(e as Map<String, dynamic>))
          .toList(),
      inactiveProjects: (json['inactiveProjects'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  ActiveProject.fromJson(
                      $jsonValue[r'$1'] as Map<String, dynamic>),
                  Prerequisite.fromJson(
                      $jsonValue[r'$2'] as Map<String, dynamic>),
                ),
              ))
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
      'activeProjects': instance.activeProjects,
      'inactiveProjects': instance.inactiveProjects
          .map((e) => <String, dynamic>{
                r'$1': e.$1,
                r'$2': e.$2,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
