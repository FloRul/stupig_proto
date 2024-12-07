// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'click_handling.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clickStreamHash() => r'ecc343e5708eccf7111d9f1feb5b686ade70cefb';

/// See also [ClickStream].
@ProviderFor(ClickStream)
final clickStreamProvider =
    StreamNotifierProvider<ClickStream, ClickEvent>.internal(
  ClickStream.new,
  name: r'clickStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clickStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClickStream = StreamNotifier<ClickEvent>;
String _$clickCountHash() => r'6aa2107529308a167199957b2677b384d232aff1';

/// See also [ClickCount].
@ProviderFor(ClickCount)
final clickCountProvider = NotifierProvider<ClickCount, int>.internal(
  ClickCount.new,
  name: r'clickCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clickCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClickCount = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
