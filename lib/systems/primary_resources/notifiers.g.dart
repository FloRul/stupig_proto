// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$experienceHash() => r'f9bfd6c71d8981febec52b8d2a0db315c3519004';

/// See also [Experience].
@ProviderFor(Experience)
final experienceProvider =
    NotifierProvider<Experience, ExperienceState>.internal(
  Experience.new,
  name: r'experienceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$experienceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Experience = Notifier<ExperienceState>;
String _$moneyHash() => r'860f71f2c8a69a19cf5f43b37244ef24298ab071';

/// See also [Money].
@ProviderFor(Money)
final moneyProvider = NotifierProvider<Money, int>.internal(
  Money.new,
  name: r'moneyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moneyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Money = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
