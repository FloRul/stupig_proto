// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveProjectsStateImpl _$$ActiveProjectsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveProjectsStateImpl(
      activeProjects: (json['activeProjects'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  Project.fromJson($jsonValue[r'$1'] as Map<String, dynamic>),
                  Completion.fromJson(
                      $jsonValue[r'$2'] as Map<String, dynamic>),
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$ActiveProjectsStateImplToJson(
        _$ActiveProjectsStateImpl instance) =>
    <String, dynamic>{
      'activeProjects': instance.activeProjects
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

_$ProjectRewardImpl _$$ProjectRewardImplFromJson(Map<String, dynamic> json) =>
    _$ProjectRewardImpl(
      minXpAmount: (json['minXpAmount'] as num).toInt(),
      maxXpAmount: (json['maxXpAmount'] as num).toInt(),
      minMoneyAmount: (json['minMoneyAmount'] as num).toInt(),
      maxMoneyAmount: (json['maxMoneyAmount'] as num).toInt(),
      failRate: (json['failRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProjectRewardImplToJson(_$ProjectRewardImpl instance) =>
    <String, dynamic>{
      'minXpAmount': instance.minXpAmount,
      'maxXpAmount': instance.maxXpAmount,
      'minMoneyAmount': instance.minMoneyAmount,
      'maxMoneyAmount': instance.maxMoneyAmount,
      'failRate': instance.failRate,
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
