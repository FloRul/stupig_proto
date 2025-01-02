// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nextLvlFlashCardsHash() => r'9e5dc8e8803071bcf50ee42bff3887214283a04e';

/// See also [nextLvlFlashCards].
@ProviderFor(nextLvlFlashCards)
final nextLvlFlashCardsProvider = AutoDisposeProvider<List<FlashCard>>.internal(
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
typedef NextLvlFlashCardsRef = AutoDisposeProviderRef<List<FlashCard>>;
String _$progressionRepositoryHash() =>
    r'24348f1500c87b1997a88c26a372270af89cf62c';

/// See also [progressionRepository].
@ProviderFor(progressionRepository)
final progressionRepositoryProvider =
    FutureProvider<ProgressionRepository>.internal(
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
typedef ProgressionRepositoryRef = FutureProviderRef<ProgressionRepository>;
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
String _$subthemeFlashCardsHash() =>
    r'0b4b539999b7dc48d8f3d7ff0d0f770b6c729ab8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [subthemeFlashCards].
@ProviderFor(subthemeFlashCards)
const subthemeFlashCardsProvider = SubthemeFlashCardsFamily();

/// See also [subthemeFlashCards].
class SubthemeFlashCardsFamily extends Family<List<FlashCard>> {
  /// See also [subthemeFlashCards].
  const SubthemeFlashCardsFamily();

  /// See also [subthemeFlashCards].
  SubthemeFlashCardsProvider call(
    Subtheme subtheme,
  ) {
    return SubthemeFlashCardsProvider(
      subtheme,
    );
  }

  @override
  SubthemeFlashCardsProvider getProviderOverride(
    covariant SubthemeFlashCardsProvider provider,
  ) {
    return call(
      provider.subtheme,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'subthemeFlashCardsProvider';
}

/// See also [subthemeFlashCards].
class SubthemeFlashCardsProvider extends AutoDisposeProvider<List<FlashCard>> {
  /// See also [subthemeFlashCards].
  SubthemeFlashCardsProvider(
    Subtheme subtheme,
  ) : this._internal(
          (ref) => subthemeFlashCards(
            ref as SubthemeFlashCardsRef,
            subtheme,
          ),
          from: subthemeFlashCardsProvider,
          name: r'subthemeFlashCardsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subthemeFlashCardsHash,
          dependencies: SubthemeFlashCardsFamily._dependencies,
          allTransitiveDependencies:
              SubthemeFlashCardsFamily._allTransitiveDependencies,
          subtheme: subtheme,
        );

  SubthemeFlashCardsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.subtheme,
  }) : super.internal();

  final Subtheme subtheme;

  @override
  Override overrideWith(
    List<FlashCard> Function(SubthemeFlashCardsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubthemeFlashCardsProvider._internal(
        (ref) => create(ref as SubthemeFlashCardsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        subtheme: subtheme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<FlashCard>> createElement() {
    return _SubthemeFlashCardsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubthemeFlashCardsProvider && other.subtheme == subtheme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, subtheme.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubthemeFlashCardsRef on AutoDisposeProviderRef<List<FlashCard>> {
  /// The parameter `subtheme` of this provider.
  Subtheme get subtheme;
}

class _SubthemeFlashCardsProviderElement
    extends AutoDisposeProviderElement<List<FlashCard>>
    with SubthemeFlashCardsRef {
  _SubthemeFlashCardsProviderElement(super.provider);

  @override
  Subtheme get subtheme => (origin as SubthemeFlashCardsProvider).subtheme;
}

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
