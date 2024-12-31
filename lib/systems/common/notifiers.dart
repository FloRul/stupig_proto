import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notifiers.g.dart';

@riverpod
Future<SharedPreferences> sharedPrefs(Ref ref) async {
  return await SharedPreferences.getInstance();
}
