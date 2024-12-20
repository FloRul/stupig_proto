// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletionImpl _$$CompletionImplFromJson(Map<String, dynamic> json) =>
    _$CompletionImpl(
      baseAmount: (json['baseAmount'] as num).toDouble(),
      completedAmount: (json['completedAmount'] as num).toDouble(),
      multipliers: (json['multipliers'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$CompletionImplToJson(_$CompletionImpl instance) =>
    <String, dynamic>{
      'baseAmount': instance.baseAmount,
      'completedAmount': instance.completedAmount,
      'multipliers': instance.multipliers,
    };
