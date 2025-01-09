// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultipliedImpl _$$MultipliedImplFromJson(Map<String, dynamic> json) =>
    _$MultipliedImpl(
      baseValue: (json['baseValue'] as num).toDouble(),
      baseCost: (json['baseCost'] as num).toInt(),
      valueMultiplier: (json['valueMultiplier'] as num).toDouble(),
      costMultiplier: (json['costMultiplier'] as num).toDouble(),
      level: (json['level'] as num?)?.toInt() ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MultipliedImplToJson(_$MultipliedImpl instance) =>
    <String, dynamic>{
      'baseValue': instance.baseValue,
      'baseCost': instance.baseCost,
      'valueMultiplier': instance.valueMultiplier,
      'costMultiplier': instance.costMultiplier,
      'level': instance.level,
      'runtimeType': instance.$type,
    };

_$IncrementedImpl _$$IncrementedImplFromJson(Map<String, dynamic> json) =>
    _$IncrementedImpl(
      baseValue: (json['baseValue'] as num).toInt(),
      baseCost: (json['baseCost'] as num).toInt(),
      valueIncrementStep: (json['valueIncrementStep'] as num?)?.toInt() ?? 1,
      costMultiplier: (json['costMultiplier'] as num).toDouble(),
      level: (json['level'] as num?)?.toInt() ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IncrementedImplToJson(_$IncrementedImpl instance) =>
    <String, dynamic>{
      'baseValue': instance.baseValue,
      'baseCost': instance.baseCost,
      'valueIncrementStep': instance.valueIncrementStep,
      'costMultiplier': instance.costMultiplier,
      'level': instance.level,
      'runtimeType': instance.$type,
    };
