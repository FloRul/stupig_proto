import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';

class ResourcesView extends ConsumerWidget {
  const ResourcesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resources = ref.watch(secResourcesProvider);
    return Column(
      children: [
        const XpWidget(),
        PrimaryResourceIndicator<int>(
          resource: ref.watch(moneyProvider),
          label: 'Money',
          resourceToString: (value) => '${value.toString()} \$',
          description:
              'Money: What clients think you\'re swimming in because \'it\'s just typing.\'\nUse it to upgrade your setup from \'potato PC\' to \'builds without crashing.\'',
        ),
        ...ResourceType.values.map((r) => ResourceIndicator(
              description: r.description,
              name: r.name,
              resource: resources[r]!,
            )),
      ],
    );
  }
}

class PrimaryResourceIndicator<T> extends StatelessWidget {
  const PrimaryResourceIndicator({
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
    var xpState = ref.watch(experienceProvider);
    return Tooltip(
      message: '${xpState.xp} / ${xpState.xpToNextLevel}',
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
                  end: xpState.xp / xpState.xpToNextLevel,
                ),
                builder: (context, value, _) => LinearProgressIndicator(
                  minHeight: 16,
                  borderRadius: BorderRadius.circular(8),
                  value: xpState.xp / xpState.xpToNextLevel,
                  color: Colors.green,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Level ${xpState.level}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ResourceIndicator extends StatelessWidget {
  final String description;
  final String name;
  final Resource resource;

  const ResourceIndicator({
    super.key,
    required this.description,
    required this.resource,
    required this.name,
  });

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
            Text(name),
            Text(resource.toString()),
          ],
        ),
      ),
    );
  }
}
