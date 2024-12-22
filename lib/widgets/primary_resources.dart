import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/primary_resource_notifier.dart';

class PrimaryResourceView extends ConsumerWidget {
  const PrimaryResourceView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var resources = ref.watch(primaryResourceNotifierProvider);
    return Tooltip(
      message: '${resources.xp} / ${resources.xpToNextLevel}',
      child: Row(
        children: [
          Expanded(
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 250),
              curve: Curves.linear,
              tween: Tween<double>(
                begin: 0,
                end: resources.xp / resources.xpToNextLevel,
              ),
              builder: (context, value, _) => Center(
                child: LinearProgressIndicator(
                  minHeight: 16,
                  borderRadius: BorderRadius.circular(8),
                  value: value,
                  color: Colors.green,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
          ),
          Text(
            '  Level ${resources.level}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
