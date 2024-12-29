import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';

class DebugPanel extends ConsumerStatefulWidget {
  const DebugPanel({super.key});

  @override
  ConsumerState<DebugPanel> createState() => _DebugPanelState();
}

class _DebugPanelState extends ConsumerState<DebugPanel> {
  double _sliderMoneyValue = 10;
  double _sliderXPValue = 10;

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
          ElevatedButton(
            child: const Text('Earn money'),
            onPressed: () {
              ref.read(eventBusProvider.notifier).publish(GameEvent.moneyEarned(amount: _sliderMoneyValue.toInt()));
            },
          ),
          const SizedBox(width: 8),
          Slider(
            value: _sliderMoneyValue,
            min: 1,
            max: 100,
            divisions: 99,
            label: _sliderMoneyValue.toString(),
            onChanged: (value) {
              setState(() {
                _sliderMoneyValue = value;
              });
            },
          ),
          ElevatedButton(
            child: const Text('Earn XP'),
            onPressed: () {
              ref.read(eventBusProvider.notifier).publish(GameEvent.xpEarned(amount: _sliderXPValue.toInt()));
            },
          ),
          const SizedBox(width: 8),
          Slider(
            value: _sliderXPValue,
            min: 1,
            max: 100,
            divisions: 99,
            label: _sliderXPValue.toString(),
            onChanged: (value) {
              setState(() {
                _sliderXPValue = value;
              });
            },
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Save game'),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Load game'),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text('Clear save'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
