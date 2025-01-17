// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$experienceHash() => r'20ea35eca142f0f92e2271043c0a035fb5a48ee4';

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
String _$moneyHash() => r'48e7715858603661daa2f030afec2b06c7400e41';

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
