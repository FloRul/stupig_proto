// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondaryResourceStateImpl _$$SecondaryResourceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondaryResourceStateImpl(
      cpuPower: (json['cpuPower'] as num).toDouble(),
      ram: (json['ram'] as num).toInt(),
      gpuVram: (json['gpuVram'] as num).toInt(),
      availableProjectSlots: (json['availableProjectSlots'] as num).toInt(),
      reputationPoints: (json['reputationPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$SecondaryResourceStateImplToJson(
        _$SecondaryResourceStateImpl instance) =>
    <String, dynamic>{
      'cpuPower': instance.cpuPower,
      'ram': instance.ram,
      'gpuVram': instance.gpuVram,
      'availableProjectSlots': instance.availableProjectSlots,
      'reputationPoints': instance.reputationPoints,
    };
