// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveProjectStateImpl _$$ActiveProjectStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveProjectStateImpl(
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
      completion:
          Completion.fromJson(json['completion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActiveProjectStateImplToJson(
        _$ActiveProjectStateImpl instance) =>
    <String, dynamic>{
      'project': instance.project,
      'completion': instance.completion,
    };

_$ProjectRewardImpl _$$ProjectRewardImplFromJson(Map<String, dynamic> json) =>
    _$ProjectRewardImpl(
      xpAmount: (json['xpAmount'] as num).toInt(),
      moneyAmount: (json['moneyAmount'] as num).toInt(),
      feature: $enumDecodeNullable(_$FeatureEnumMap, json['feature']),
    );

Map<String, dynamic> _$$ProjectRewardImplToJson(_$ProjectRewardImpl instance) =>
    <String, dynamic>{
      'xpAmount': instance.xpAmount,
      'moneyAmount': instance.moneyAmount,
      'feature': _$FeatureEnumMap[instance.feature],
    };

const _$FeatureEnumMap = {
  Feature.showRewards: 'showRewards',
  Feature.canPurchaseAvailableSlot: 'canPurchaseAvailableSlot',
  Feature.canPurchaseActiveSlot: 'canPurchaseActiveSlot',
  Feature.canSaveLoadGame: 'canSaveLoadGame',
  Feature.canSeePrgression: 'canSeePrgression',
};

_$CompletionImpl _$$CompletionImplFromJson(Map<String, dynamic> json) =>
    _$CompletionImpl(
      baseAmount: (json['baseAmount'] as num).toDouble(),
      completedAmount: (json['completedAmount'] as num).toDouble(),
      baseRate: (json['baseRate'] as num).toDouble(),
      multipliers: (json['multipliers'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$CompletionImplToJson(_$CompletionImpl instance) =>
    <String, dynamic>{
      'baseAmount': instance.baseAmount,
      'completedAmount': instance.completedAmount,
      'baseRate': instance.baseRate,
      'multipliers': instance.multipliers,
    };
