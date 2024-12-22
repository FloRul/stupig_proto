// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectOrchestratorHash() =>
    r'3757681a468e6b90986c33ed3fcf2c53cf418972';

/// See also [ProjectOrchestrator].
@ProviderFor(ProjectOrchestrator)
final projectOrchestratorProvider =
    NotifierProvider<ProjectOrchestrator, void>.internal(
  ProjectOrchestrator.new,
  name: r'projectOrchestratorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectOrchestratorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectOrchestrator = Notifier<void>;
String _$activeProjectsStateNotifierHash() =>
    r'03d96d173f050ffc77f1bc9a4be0c7853b8935df';

/// See also [ActiveProjectsStateNotifier].
@ProviderFor(ActiveProjectsStateNotifier)
final activeProjectsStateNotifierProvider =
    NotifierProvider<ActiveProjectsStateNotifier, List<ProjectState>>.internal(
  ActiveProjectsStateNotifier.new,
  name: r'activeProjectsStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeProjectsStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActiveProjectsStateNotifier = Notifier<List<ProjectState>>;
String _$completedProjectsStateNotifierHash() =>
    r'50a82460d3c4176768ff3e80f46a698476bf3ef7';

/// See also [CompletedProjectsStateNotifier].
@ProviderFor(CompletedProjectsStateNotifier)
final completedProjectsStateNotifierProvider =
    NotifierProvider<CompletedProjectsStateNotifier, List<Project>>.internal(
  CompletedProjectsStateNotifier.new,
  name: r'completedProjectsStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$completedProjectsStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CompletedProjectsStateNotifier = Notifier<List<Project>>;
String _$projectNotifierHash() => r'fc6d08029dd767972a9c34aca5b6245ba73cb281';

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

String _$inactiveProjectsNotifierHash() =>
    r'8f5fc266690f8bd107c871607b3333b1fb048424';

/// See also [InactiveProjectsNotifier].
@ProviderFor(InactiveProjectsNotifier)
final inactiveProjectsNotifierProvider =
    NotifierProvider<InactiveProjectsNotifier, List<Project>>.internal(
  InactiveProjectsNotifier.new,
  name: r'inactiveProjectsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$inactiveProjectsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InactiveProjectsNotifier = Notifier<List<Project>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
