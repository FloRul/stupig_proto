import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/primary_resource_notifier.dart';

class ResourcesView extends ConsumerWidget {
  const ResourcesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const XpWidget(),
        ResourceContainer<int>(
          resource: ref.watch(primaryResourceNotifierProvider.select((value) => value.money)),
          label: 'Money',
          resourceToString: (value) => '${value.toString()} \$',
          description: 'The amount of money you have.',
        ),
      ],
    );
  }
}

class ResourceContainer<T> extends StatelessWidget {
  const ResourceContainer({
    super.key,
    required this.resource,
    required this.label,
    required this.resourceToString,
    this.description,
  });

  final T resource;
  final String label;
  final String Function(T) resourceToString;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: description,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(resourceToString(resource)),
          ],
        ),
      ),
    );
  }
}

class XpWidget extends ConsumerWidget {
  const XpWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var xp = ref.watch(primaryResourceNotifierProvider.select((value) => value.xp));
    var level = ref.watch(primaryResourceNotifierProvider.select((value) => value.level));
    var xpToNextLevel = ref.watch(primaryResourceNotifierProvider.select((value) => value.xpToNextLevel));
    return Tooltip(
      message: '$xp / $xpToNextLevel',
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(
              child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 250),
                curve: Curves.linear,
                tween: Tween<double>(
                  begin: 0,
                  end: xp / xpToNextLevel,
                ),
                builder: (context, value, _) => LinearProgressIndicator(
                  minHeight: 16,
                  borderRadius: BorderRadius.circular(8),
                  value: value,
                  color: Colors.green,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
            Text(
              '  Level $level',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
