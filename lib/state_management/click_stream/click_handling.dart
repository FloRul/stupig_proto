// Click event class remains the same
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'click_handling.g.dart';

@immutable
class ClickEvent {
  final DateTime timestamp;
  final double value;

  ClickEvent({required this.value}) : timestamp = DateTime.now();
}

@Riverpod(keepAlive: true)
class ClickStream extends _$ClickStream {
  final _controller = StreamController<ClickEvent>.broadcast();
  DateTime? _lastEmitTime;

  @override
  Stream<ClickEvent> build() {
    ref.onDispose(() => _controller.close());
    return _controller.stream;
  }

  void emitClick([double value = 1.0]) {
    final now = DateTime.now();
    if (_lastEmitTime == null || now.difference(_lastEmitTime!) >= const Duration(milliseconds: kMaxClickInterval)) {
      _controller.add(ClickEvent(value: value));
      _lastEmitTime = now;
    }
  }
}

// Optional: Create a provider for click count
@Riverpod(keepAlive: true)
class ClickCount extends _$ClickCount {
  @override
  int build() {
    int count = 0;

    ref.listen(clickStreamProvider, (previous, next) {
      count++;
      state = count;
    });

    return 0;
  }
}
