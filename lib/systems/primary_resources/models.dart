import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    required int xp,
    required int level,
  }) = _ExperienceState;
  factory ExperienceState.initial() => const ExperienceState(
        xp: 0,
        level: 1,
      );

  int get xpToNextLevel => (kBaseXp * pow(level, kLevelUpFactor)).toInt();

  const ExperienceState._();
  factory ExperienceState.fromJson(Map<String, Object?> json) => _$ExperienceStateFromJson(json);
}
