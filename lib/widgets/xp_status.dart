import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';

class XpStatus extends ConsumerWidget {
  const XpStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (data) => Tooltip(
            message: '${data.xp} / ${data.xpToNextLevel}',
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: data.xp / data.xpToNextLevel,
                    backgroundColor: Colors.grey,
                    color: Colors.green,
                  ),
                ),
                Text(
                  '  Level: ${data.level}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          error: (error, stackTrace) => const Center(
            child: Text('An error has occured'),
          ),
          loading: () => const LinearProgressIndicator(),
        );
  }
}
