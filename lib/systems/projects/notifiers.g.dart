// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectsNotifierHash() => r'009a2a6eb8e7fa156205baff8596feaa0e9620a6';

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
    r'07976326c78f19cb38fd7c341e691a35ecbc8ecd';

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
    r'2203c6f6b38e3ae32a047e52333f226e51ca4d0a';

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

abstract class _$AvailableProjectNotifier
    extends BuildlessNotifier<AvailableProjectState> {
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
class AvailableProjectNotifierProvider extends NotifierProviderImpl<
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
  NotifierProviderElement<AvailableProjectNotifier, AvailableProjectState>
      createElement() {
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
    on NotifierProviderRef<AvailableProjectState> {
  /// The parameter `projectState` of this provider.
  AvailableProjectState get projectState;
}

class _AvailableProjectNotifierProviderElement extends NotifierProviderElement<
    AvailableProjectNotifier,
    AvailableProjectState> with AvailableProjectNotifierRef {
  _AvailableProjectNotifierProviderElement(super.provider);

  @override
  AvailableProjectState get projectState =>
      (origin as AvailableProjectNotifierProvider).projectState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
