import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';

part 'notifiers.g.dart';

@riverpod
Future<void> initialization(Ref ref) async {
  print('Initializing...');
  await Future.wait([
    ref.read(progressionRepositoryProvider.future),
    // ref.read(settingsProvider.future),
  ]);
}
