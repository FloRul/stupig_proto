import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/common/notifiers.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';

class DebugPanel extends ConsumerStatefulWidget {
  const DebugPanel({super.key});

  @override
  ConsumerState<DebugPanel> createState() => _DebugPanelState();
}

class _DebugPanelState extends ConsumerState<DebugPanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          ElevatedButton(
            child: const Text('Level Up'),
            onPressed: () {
              ref.read(eventBusProvider.notifier).publish(const GameEvent.levelUp());
            },
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Save game'),
            onPressed: () => ref.read(eventBusProvider.notifier).publish(const GameEvent.saveGame()),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Load game'),
            onPressed: () => ref.read(eventBusProvider.notifier).publish(const GameEvent.loadGame()),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Clear save'),
            onPressed: () async {
              ref.read(progressionProvider.notifier).resetProgress();
              ref.read(sharedPrefsProvider).value!.clear();
            },
          ),
          ElevatedButton(
            child: const Text('Reset game'),
            onPressed: () async {
              ref.read(eventBusProvider.notifier).publish(GameEvent.resetGame());
            },
          ),
        ],
      ),
    );
  }
}
