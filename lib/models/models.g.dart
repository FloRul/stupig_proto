// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      theme: $enumDecode(_$ThemeEnumMap, json['theme']),
      subtheme: json['subtheme'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'theme': _$ThemeEnumMap[instance.theme]!,
      'subtheme': instance.subtheme,
      'name': instance.name,
    };

const _$ThemeEnumMap = {
  Theme.algorithmsDataStructures: 'algorithmsDataStructures',
  Theme.programmingFundamentals: 'programmingFundamentals',
  Theme.softwareEngineering: 'softwareEngineering',
  Theme.gameDevelopment: 'gameDevelopment',
  Theme.dataBase: 'dataBase',
  Theme.webDevelopment: 'webDevelopment',
  Theme.aiAndQuantumComputing: 'aiAndQuantumComputing',
};

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      xp: (json['xp'] as num).toDouble(),
      money: (json['money'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'money': instance.money,
    };

_$PrerequisiteImpl _$$PrerequisiteImplFromJson(Map<String, dynamic> json) =>
    _$PrerequisiteImpl(
      cpuPower: (json['cpuPower'] as num).toDouble(),
      ram: (json['ram'] as num).toDouble(),
    );

Map<String, dynamic> _$$PrerequisiteImplToJson(_$PrerequisiteImpl instance) =>
    <String, dynamic>{
      'cpuPower': instance.cpuPower,
      'ram': instance.ram,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      theme: $enumDecode(_$ThemeEnumMap, json['theme']),
      ram: (json['ram'] as num).toDouble(),
      subtheme: json['subtheme'] as String,
      progress: (json['progress'] as num).toDouble(),
      reward: Reward.fromJson(json['reward'] as Map<String, dynamic>),
      prerequisite: json['prerequisite'] == null
          ? null
          : Prerequisite.fromJson(json['prerequisite'] as Map<String, dynamic>),
      status: $enumDecode(_$ProjectStatusEnumMap, json['status']),
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'theme': _$ThemeEnumMap[instance.theme]!,
      'ram': instance.ram,
      'subtheme': instance.subtheme,
      'progress': instance.progress,
      'reward': instance.reward,
      'prerequisite': instance.prerequisite,
      'status': _$ProjectStatusEnumMap[instance.status]!,
      'rarity': _$RarityEnumMap[instance.rarity]!,
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.notStarted: 'notStarted',
  ProjectStatus.inProgress: 'inProgress',
  ProjectStatus.completed: 'completed',
};

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.uncommon: 'uncommon',
  Rarity.rare: 'rare',
  Rarity.epic: 'epic',
  Rarity.legendary: 'legendary',
};
