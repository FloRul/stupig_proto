// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeProjectNotifierHash() =>
    r'44d63fcdecf9d4d67d02a651f037e8c8408dbd03';

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

abstract class _$ActiveProjectNotifier
    extends BuildlessAutoDisposeNotifier<ActiveProjectState> {
  late final ActiveProjectState projectState;

  ActiveProjectState build(
    ActiveProjectState projectState,
  );
}

/// See also [ActiveProjectNotifier].
@ProviderFor(ActiveProjectNotifier)
const activeProjectNotifierProvider = ActiveProjectNotifierFamily();

/// See also [ActiveProjectNotifier].
class ActiveProjectNotifierFamily extends Family<ActiveProjectState> {
  /// See also [ActiveProjectNotifier].
  const ActiveProjectNotifierFamily();

  /// See also [ActiveProjectNotifier].
  ActiveProjectNotifierProvider call(
    ActiveProjectState projectState,
  ) {
    return ActiveProjectNotifierProvider(
      projectState,
    );
  }

  @override
  ActiveProjectNotifierProvider getProviderOverride(
    covariant ActiveProjectNotifierProvider provider,
  ) {
    return call(
      provider.projectState,
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
  String? get name => r'activeProjectNotifierProvider';
}

/// See also [ActiveProjectNotifier].
class ActiveProjectNotifierProvider extends AutoDisposeNotifierProviderImpl<
    ActiveProjectNotifier, ActiveProjectState> {
  /// See also [ActiveProjectNotifier].
  ActiveProjectNotifierProvider(
    ActiveProjectState projectState,
  ) : this._internal(
          () => ActiveProjectNotifier()..projectState = projectState,
          from: activeProjectNotifierProvider,
          name: r'activeProjectNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeProjectNotifierHash,
          dependencies: ActiveProjectNotifierFamily._dependencies,
          allTransitiveDependencies:
              ActiveProjectNotifierFamily._allTransitiveDependencies,
          projectState: projectState,
        );

  ActiveProjectNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectState,
  }) : super.internal();

  final ActiveProjectState projectState;

  @override
  ActiveProjectState runNotifierBuild(
    covariant ActiveProjectNotifier notifier,
  ) {
    return notifier.build(
      projectState,
    );
  }

  @override
  Override overrideWith(ActiveProjectNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveProjectNotifierProvider._internal(
        () => create()..projectState = projectState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        projectState: projectState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ActiveProjectNotifier, ActiveProjectState>
      createElement() {
    return _ActiveProjectNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveProjectNotifierProvider &&
        other.projectState == projectState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectState.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ActiveProjectNotifierRef
    on AutoDisposeNotifierProviderRef<ActiveProjectState> {
  /// The parameter `projectState` of this provider.
  ActiveProjectState get projectState;
}

class _ActiveProjectNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveProjectNotifier,
        ActiveProjectState> with ActiveProjectNotifierRef {
  _ActiveProjectNotifierProviderElement(super.provider);

  @override
  ActiveProjectState get projectState =>
      (origin as ActiveProjectNotifierProvider).projectState;
}

String _$projectsNotifierHash() => r'bde950df93d750f75a5ade8117ee98f292a22841';

/// See also [ProjectsNotifier].
@ProviderFor(ProjectsNotifier)
final projectsNotifierProvider =
    NotifierProvider<ProjectsNotifier, ProjectsState>.internal(
  ProjectsNotifier.new,
  name: r'projectsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectsNotifier = Notifier<ProjectsState>;
String _$availableProjectsNotifierHash() =>
    r'b68173fd2348ad9306f9b04d4640c9cafbf546ab';

/// See also [AvailableProjectsNotifier].
@ProviderFor(AvailableProjectsNotifier)
final availableProjectsNotifierProvider = NotifierProvider<
    AvailableProjectsNotifier, List<AvailableProjectState>>.internal(
  AvailableProjectsNotifier.new,
  name: r'availableProjectsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$availableProjectsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AvailableProjectsNotifier = Notifier<List<AvailableProjectState>>;
String _$availableProjectNotifierHash() =>
    r'f65d6af1b1dfba10cb5717eb40719062b16f3d27';

abstract class _$AvailableProjectNotifier
    extends BuildlessAutoDisposeNotifier<AvailableProjectState> {
  late final AvailableProjectState projectState;

  AvailableProjectState build(
    AvailableProjectState projectState,
  );
}

/// See also [AvailableProjectNotifier].
@ProviderFor(AvailableProjectNotifier)
const availableProjectNotifierProvider = AvailableProjectNotifierFamily();

/// See also [AvailableProjectNotifier].
class AvailableProjectNotifierFamily extends Family<AvailableProjectState> {
  /// See also [AvailableProjectNotifier].
  const AvailableProjectNotifierFamily();

  /// See also [AvailableProjectNotifier].
  AvailableProjectNotifierProvider call(
    AvailableProjectState projectState,
  ) {
    return AvailableProjectNotifierProvider(
      projectState,
    );
  }

  @override
  AvailableProjectNotifierProvider getProviderOverride(
    covariant AvailableProjectNotifierProvider provider,
  ) {
    return call(
      provider.projectState,
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
  String? get name => r'availableProjectNotifierProvider';
}

/// See also [AvailableProjectNotifier].
class AvailableProjectNotifierProvider extends AutoDisposeNotifierProviderImpl<
    AvailableProjectNotifier, AvailableProjectState> {
  /// See also [AvailableProjectNotifier].
  AvailableProjectNotifierProvider(
    AvailableProjectState projectState,
  ) : this._internal(
          () => AvailableProjectNotifier()..projectState = projectState,
          from: availableProjectNotifierProvider,
          name: r'availableProjectNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$availableProjectNotifierHash,
          dependencies: AvailableProjectNotifierFamily._dependencies,
          allTransitiveDependencies:
              AvailableProjectNotifierFamily._allTransitiveDependencies,
          projectState: projectState,
        );

  AvailableProjectNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectState,
  }) : super.internal();

  final AvailableProjectState projectState;

  @override
  AvailableProjectState runNotifierBuild(
    covariant AvailableProjectNotifier notifier,
  ) {
    return notifier.build(
      projectState,
    );
  }

  @override
  Override overrideWith(AvailableProjectNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AvailableProjectNotifierProvider._internal(
        () => create()..projectState = projectState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        projectState: projectState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AvailableProjectNotifier,
      AvailableProjectState> createElement() {
    return _AvailableProjectNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AvailableProjectNotifierProvider &&
        other.projectState == projectState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectState.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AvailableProjectNotifierRef
    on AutoDisposeNotifierProviderRef<AvailableProjectState> {
  /// The parameter `projectState` of this provider.
  AvailableProjectState get projectState;
}

class _AvailableProjectNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<AvailableProjectNotifier,
        AvailableProjectState> with AvailableProjectNotifierRef {
  _AvailableProjectNotifierProviderElement(super.provider);

  @override
  AvailableProjectState get projectState =>
      (origin as AvailableProjectNotifierProvider).projectState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
