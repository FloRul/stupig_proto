// Click event class remains the same
import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/game_event.dart';

part 'event_bus.g.dart';

@Riverpod(keepAlive: true)
class EventBus extends _$EventBus {
  final _controller = StreamController<GameEvent>.broadcast();

  @override
  Stream<GameEvent> build() {
    ref.onDispose(() => _controller.close());
    return _controller.stream;
  }

  void publish(GameEvent event) => _controller.add(event);
  Stream<T> on<T extends GameEvent>() => _controller.stream.where((event) => event is T).cast<T>();
}
