// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_project_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initialProjectsHash() => r'3a83a76d4b913ad11380abfe18fd51b439bd7a38';

/// See also [initialProjects].
@ProviderFor(initialProjects)
final initialProjectsProvider = FutureProvider<List<Project>>.internal(
  initialProjects,
  name: r'initialProjectsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initialProjectsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InitialProjectsRef = FutureProviderRef<List<Project>>;
String _$availableProjectsNotifierHash() =>
    r'6149cc801f18de888573ffa58bd27c422b92e971';

/// See also [AvailableProjectsNotifier].
@ProviderFor(AvailableProjectsNotifier)
final availableProjectsNotifierProvider = NotifierProvider<
    AvailableProjectsNotifier, AvailableProjectsState>.internal(
  AvailableProjectsNotifier.new,
  name: r'availableProjectsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$availableProjectsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AvailableProjectsNotifier = Notifier<AvailableProjectsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
