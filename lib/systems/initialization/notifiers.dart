import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifiers.g.dart';

@riverpod
Future<void> initialization(Ref ref) async {
  await Future.wait([
    // ref.read(userDataProvider.future),
    // ref.read(settingsProvider.future),
  ]);
}
