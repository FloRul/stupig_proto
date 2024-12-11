import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/utils/extensions.dart';

class XpStatus extends ConsumerWidget {
  const XpStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(gameStateNotifierProvider.selectAsync(
          (data) => (data.xp, data.level, data.xpToNextLevel),
        ))
        .when(
          data: (data) {
            print(data);
            return Tooltip(
              message: '${data.$1} / ${data.$3}',
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: data.$1 / data.$3,
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '  Level ${data.$2}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => const Center(
            child: Text('An error has occured'),
          ),
          loading: () => const LinearProgressIndicator(),
        );
  }
}
