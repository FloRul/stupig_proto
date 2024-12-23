// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectNotifierHash() => r'f6921df69d3219d2ae826ad0ff41dc342d5a538a';

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

abstract class _$ProjectNotifier extends BuildlessNotifier<ActiveProjectState> {
  late final ActiveProjectState projectState;

  ActiveProjectState build(
    ActiveProjectState projectState,
  );
}

/// See also [ProjectNotifier].
@ProviderFor(ProjectNotifier)
const projectNotifierProvider = ProjectNotifierFamily();

/// See also [ProjectNotifier].
class ProjectNotifierFamily extends Family<ActiveProjectState> {
  /// See also [ProjectNotifier].
  const ProjectNotifierFamily();

  /// See also [ProjectNotifier].
  ProjectNotifierProvider call(
    ActiveProjectState projectState,
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
    extends NotifierProviderImpl<ProjectNotifier, ActiveProjectState> {
  /// See also [ProjectNotifier].
  ProjectNotifierProvider(
    ActiveProjectState projectState,
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

  final ActiveProjectState projectState;

  @override
  ActiveProjectState runNotifierBuild(
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
  NotifierProviderElement<ProjectNotifier, ActiveProjectState> createElement() {
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
mixin ProjectNotifierRef on NotifierProviderRef<ActiveProjectState> {
  /// The parameter `projectState` of this provider.
  ActiveProjectState get projectState;
}

class _ProjectNotifierProviderElement
    extends NotifierProviderElement<ProjectNotifier, ActiveProjectState>
    with ProjectNotifierRef {
  _ProjectNotifierProviderElement(super.provider);

  @override
  ActiveProjectState get projectState =>
      (origin as ProjectNotifierProvider).projectState;
}

String _$projectsNotifierHash() => r'bfdfa27c7859c07028cf0a88191fd4349dab65e2';

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
String _$availableProjectNotifierHash() =>
    r'3e938832725416eaf909dc5142776c0047c555e3';

/// See also [AvailableProjectNotifier].
@ProviderFor(AvailableProjectNotifier)
final availableProjectNotifierProvider = NotifierProvider<
    AvailableProjectNotifier, List<AvailableProjectState>>.internal(
  AvailableProjectNotifier.new,
  name: r'availableProjectNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$availableProjectNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AvailableProjectNotifier = Notifier<List<AvailableProjectState>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
