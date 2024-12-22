import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'global_ticker.g.dart';

@Riverpod(keepAlive: true)
class GlobalTicker extends _$GlobalTicker {
  @override
  Stream<DateTime> build() {
    return Stream.periodic(const Duration(milliseconds: kTickInterval), (count) {
      return DateTime.now();
    });
  }
}
