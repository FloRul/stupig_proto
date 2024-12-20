import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'global_ticker.g.dart';

@Riverpod(keepAlive: true)
class GlobalTicker extends _$GlobalTicker {
  Timer? _timer;
  DateTime? _lastTick;

  @override
  Stream<DateTime> build() {
    _lastTick = DateTime.now();

    // Clean up on dispose
    ref.onDispose(() {
      _timer?.cancel();
    });

    return Stream.periodic(const Duration(milliseconds: 200), (count) {
      final now = DateTime.now();
      _lastTick = now;
      return now;
    });
  }

  DateTime get lastTick => _lastTick ?? DateTime.now();
}
