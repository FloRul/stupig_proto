// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectNotifierHash() => r'd83cff139e58dcb44744112c7c2000ec5edc49ad';

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

abstract class _$ProjectNotifier extends BuildlessNotifier<ProjectState> {
  late final ProjectState projectState;

  ProjectState build(
    ProjectState projectState,
  );
}

/// See also [ProjectNotifier].
@ProviderFor(ProjectNotifier)
const projectNotifierProvider = ProjectNotifierFamily();

/// See also [ProjectNotifier].
class ProjectNotifierFamily extends Family<ProjectState> {
  /// See also [ProjectNotifier].
  const ProjectNotifierFamily();

  /// See also [ProjectNotifier].
  ProjectNotifierProvider call(
    ProjectState projectState,
  ) {
    return ProjectNotifierProvider(
      projectState,
    );
  }

  @override
  ProjectNotifierProvider getProviderOverride(
    covariant ProjectNotifierProvider provider,
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
  String? get name => r'projectNotifierProvider';
}

/// See also [ProjectNotifier].
class ProjectNotifierProvider
    extends NotifierProviderImpl<ProjectNotifier, ProjectState> {
  /// See also [ProjectNotifier].
  ProjectNotifierProvider(
    ProjectState projectState,
  ) : this._internal(
          () => ProjectNotifier()..projectState = projectState,
          from: projectNotifierProvider,
          name: r'projectNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectNotifierHash,
          dependencies: ProjectNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProjectNotifierFamily._allTransitiveDependencies,
          projectState: projectState,
        );

  ProjectNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectState,
  }) : super.internal();

  final ProjectState projectState;

  @override
  ProjectState runNotifierBuild(
    covariant ProjectNotifier notifier,
  ) {
    return notifier.build(
      projectState,
    );
  }

  @override
  Override overrideWith(ProjectNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProjectNotifierProvider._internal(
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
  NotifierProviderElement<ProjectNotifier, ProjectState> createElement() {
    return _ProjectNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectNotifierProvider &&
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
mixin ProjectNotifierRef on NotifierProviderRef<ProjectState> {
  /// The parameter `projectState` of this provider.
  ProjectState get projectState;
}

class _ProjectNotifierProviderElement
    extends NotifierProviderElement<ProjectNotifier, ProjectState>
    with ProjectNotifierRef {
  _ProjectNotifierProviderElement(super.provider);

  @override
  ProjectState get projectState =>
      (origin as ProjectNotifierProvider).projectState;
}

String _$projectsNotifierHash() => r'2d5fd2663f0d23f1f89cc48a148218d8d3ba630e';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
