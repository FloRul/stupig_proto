import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/notifiers.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
Future<void> initialization(Ref ref) async {
  print('Initializing...');
  await ref.read(progressionRepositoryProvider.future);
  await ref.read(sharedPrefsProvider.future);
  await ref.read(themesProvider.future);
}
