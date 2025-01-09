import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
sealed class Resource with _$Resource {
  const factory Resource.multiplied({
    required double baseValue,
    required int baseCost,
    required double valueMultiplier,
    required double costMultiplier,
    @Default(0) int level,
  }) = Multiplied;
  const factory Resource.incremented({
    required int baseValue,
    required int baseCost,
    @Default(1) int valueIncrementStep,
    required double costMultiplier,
    @Default(0) int level,
  }) = Incremented;

  const Resource._();

  Resource upgrade() => copyWith(level: level + 1);

  double get value => switch (this) {
        Multiplied m => m.baseValue * pow(m.valueMultiplier, m.level),
        Incremented i => (i.baseValue + i.valueIncrementStep * i.level).toDouble(),
      };

  int get cost => (baseCost * pow(costMultiplier, level)).toInt();

  @override
  String toString() => switch (this) {
        Multiplied m => m.value.toStringAsFixed(2),
        Incremented i => i.value.toInt().toString(),
      };

  factory Resource.fromJson(Map<String, Object?> json) => _$ResourceFromJson(json);
}

enum ResourceType {
  techSkills(
      name: 'Tech skills',
      description:
          'Because Stack Overflow nor ChatGpt do not count as a skill by themselves.\nEnables more complex projects, better rewards, and eventually the power to mentor others without googling everything first.'),
  hardwarePower(
      name: 'Hardware power',
      description:
          'From \'Not sure it can even run Doom\' to \'Yes, it can run Crysis AND Docker.\'\nReduces project cooldowns and enables passive gains from your totally unique SaaS projects.'),
  devTools(
      name: 'Dev tools',
      description:
          'Turn your \'it works on my machine\' into \'it works on everyone\'s machine.\'\nSpeeds up projects and enables automation features.'),
  focusPoints(
      name: 'Focus points',
      description:
          'Focus Points: Brain bandwidth for juggling projects! Excess points boost quality because apparently panic-multitasking isn\'t optimal, who knew?');

  final String name;
  final String description;

  const ResourceType({
    required this.name,
    required this.description,
  });
}
