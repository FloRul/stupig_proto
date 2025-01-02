// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nextLvlFlashCardsHash() => r'806fd84e1a70396077545fa00a7490a7bea018e4';

/// See also [nextLvlFlashCards].
@ProviderFor(nextLvlFlashCards)
final nextLvlFlashCardsProvider =
    AutoDisposeFutureProvider<List<FlashCard>>.internal(
  nextLvlFlashCards,
  name: r'nextLvlFlashCardsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nextLvlFlashCardsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NextLvlFlashCardsRef = AutoDisposeFutureProviderRef<List<FlashCard>>;
String _$progressionRepositoryHash() =>
    r'230550915e7b94261f6b8bdb8d482868ff055a20';

/// See also [progressionRepository].
@ProviderFor(progressionRepository)
final progressionRepositoryProvider =
    FutureProvider<ProgressionService>.internal(
  progressionRepository,
  name: r'progressionRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$progressionRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProgressionRepositoryRef = FutureProviderRef<ProgressionService>;
String _$themesHash() => r'8a442ab8bf2ded932ab24b652f67815891818756';

/// See also [themes].
@ProviderFor(themes)
final themesProvider = FutureProvider<List<ProjectTheme>>.internal(
  themes,
  name: r'themesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ThemesRef = FutureProviderRef<List<ProjectTheme>>;
String _$playerTierHash() => r'2d0c15137f381720366e97307fb0699d086af726';

/// See also [playerTier].
@ProviderFor(playerTier)
final playerTierProvider = Provider<int>.internal(
  playerTier,
  name: r'playerTierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$playerTierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PlayerTierRef = ProviderRef<int>;
String _$progressionHash() => r'57451abd0efcd56958c79e05fb2d3d8ea7d76390';

/// See also [Progression].
@ProviderFor(Progression)
final progressionProvider =
    AsyncNotifierProvider<Progression, List<ProjectTheme>>.internal(
  Progression.new,
  name: r'progressionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$progressionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Progression = AsyncNotifier<List<ProjectTheme>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
