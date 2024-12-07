import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

enum LevelTier { student, professional, overlord }

enum Theme {
  algorithmsDataStructures(tier: LevelTier.student, fullName: 'Algorithms and Data structures'),
  programmingFundamentals(tier: LevelTier.student, fullName: 'Programming fundamentals'),
  softwareEngineering(tier: LevelTier.professional, fullName: 'Software engineering'),
  gameDevelopment(tier: LevelTier.professional, fullName: 'Game development'),
  dataBase(tier: LevelTier.professional, fullName: 'Database'),
  webDevelopment(tier: LevelTier.professional, fullName: 'Web development'),
  aiAndQuantumComputing(tier: LevelTier.overlord, fullName: 'AI and Quantum computing');

  const Theme({
    required this.tier,
    required this.fullName,
  });

  final LevelTier tier;
  final String fullName;
}

@freezed
class Subject with _$Subject {
  const factory Subject({
    required Theme theme,
    required String subtheme,
    required String name,
  }) = _Subject;

  factory Subject.fromJson(Map<String, Object?> json) => _$SubjectFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({required double xp, double? money}) = _Reward;

  factory Reward.fromJson(Map<String, Object?> json) => _$RewardFromJson(json);
}

@freezed
class Prerequisite with _$Prerequisite {
  const factory Prerequisite({
    required double cpuPower,
    required double ram,
  }) = _Prerequisite;

  factory Prerequisite.fromJson(Map<String, Object?> json) => _$PrerequisiteFromJson(json);
}

typedef InactiveProject = (ActiveProject, Prerequisite);

@freezed
class ActiveProject with _$ActiveProject {
  const factory ActiveProject({
    required String name,
    required String description,
    required Theme theme,
    required double ram,
    required String subtheme,
    required Reward reward,
  }) = _Project;

  factory ActiveProject.fromJson(Map<String, Object?> json) => _$ActiveProjectFromJson(json);
}
