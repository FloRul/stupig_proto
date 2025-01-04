// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifiers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeProjectsNotifierHash() =>
    r'a946f068d838a61dc06172d675d84b4629d8de6b';

/// See also [ActiveProjectsNotifier].
@ProviderFor(ActiveProjectsNotifier)
final activeProjectsNotifierProvider =
    NotifierProvider<ActiveProjectsNotifier, List<ProjectState>>.internal(
  ActiveProjectsNotifier.new,
  name: r'activeProjectsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeProjectsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActiveProjectsNotifier = Notifier<List<ProjectState>>;
String _$availableProjectsNotifierHash() =>
    r'4b68cf5395cdce878458e01889bd9c4996b5df4d';

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
