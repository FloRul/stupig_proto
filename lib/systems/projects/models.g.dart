// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      reward: ProjectReward.fromJson(json['reward'] as Map<String, dynamic>),
      requiredfocusPoints: (json['requiredfocusPoints'] as num).toInt(),
      type: $enumDecode(_$ProjectTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'reward': instance.reward,
      'requiredfocusPoints': instance.requiredfocusPoints,
      'type': _$ProjectTypeEnumMap[instance.type]!,
    };

const _$ProjectTypeEnumMap = {
  ProjectType.learning: 'learning',
  ProjectType.design: 'design',
  ProjectType.implementation: 'implementation',
  ProjectType.optimization: 'optimization',
};

_$AvailableProjectsStateImpl _$$AvailableProjectsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableProjectsStateImpl(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      cooldowns: (json['cooldowns'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Completion.fromJson(e as Map<String, dynamic>)),
      ),
      availableDecline: (json['availableDecline'] as num).toInt(),
    );

Map<String, dynamic> _$$AvailableProjectsStateImplToJson(
        _$AvailableProjectsStateImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
      'cooldowns': instance.cooldowns,
      'availableDecline': instance.availableDecline,
    };

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
                  $jsonValue[r'$3'] as bool?,
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
                r'$3': e.$3,
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
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$CompletionImplToJson(_$CompletionImpl instance) =>
    <String, dynamic>{
      'baseAmount': instance.baseAmount,
      'completedAmount': instance.completedAmount,
      'rate': instance.rate,
    };
