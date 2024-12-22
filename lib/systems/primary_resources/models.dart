import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class PrimaryResourcesState with _$PrimaryResourcesState {
  const factory PrimaryResourcesState({
    required int xp,
    required int money,
    required int level,
  }) = _ResourcesState;
  factory PrimaryResourcesState.initial() => const PrimaryResourcesState(
        xp: 0,
        money: 0,
        level: 1,
      );

  int get xpToNextLevel => kBaseXp * pow(level, kLevelUpFactor).toInt();

  const PrimaryResourcesState._();
  factory PrimaryResourcesState.fromJson(Map<String, Object?> json) => _$PrimaryResourcesStateFromJson(json);
}
