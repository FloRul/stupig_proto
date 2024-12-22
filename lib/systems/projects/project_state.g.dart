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
      reward: ProjectReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectStateImplToJson(_$ProjectStateImpl instance) =>
    <String, dynamic>{
      'project': instance.project,
      'completion': instance.completion,
      'reward': instance.reward,
    };

_$ProjectRewardImpl _$$ProjectRewardImplFromJson(Map<String, dynamic> json) =>
    _$ProjectRewardImpl(
      xpAmount: (json['xpAmount'] as num).toInt(),
      moneyAmount: (json['moneyAmount'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectRewardImplToJson(_$ProjectRewardImpl instance) =>
    <String, dynamic>{
      'xpAmount': instance.xpAmount,
      'moneyAmount': instance.moneyAmount,
    };

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
