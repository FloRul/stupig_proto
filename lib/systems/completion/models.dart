import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Completion with _$Completion {
  const factory Completion({
    required double baseAmount,
    required double completedAmount,
    required List<double> multipliers,
  }) = _Completion;

  factory Completion.initial(int seed) => Completion(
        baseAmount: seed * 20,
        completedAmount: 0,
        multipliers: [0],
      );

  Completion tick() => copyWith(
        completedAmount: min(completedAmount + rate, baseAmount),
      );

  double get progress => completedAmount / baseAmount;
  double get rate => 1 + multipliers.reduce((a, b) => a * b);
  bool get isComplete => completedAmount >= baseAmount;

  const Completion._();
  factory Completion.fromJson(Map<String, Object?> json) => _$CompletionFromJson(json);
}
