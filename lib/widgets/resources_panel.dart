import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';

class ResourcesView extends ConsumerWidget {
  const ResourcesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const XpWidget(),
        ResourceContainer<int>(
          resource: ref.watch(moneyProvider),
          label: 'Money',
          resourceToString: (value) => '${value.toString()} \$',
          description:
              'Money: What clients think you\'re swimming in because \'it\'s just typing.\'\nUse it to upgrade your setup from \'potato PC\' to \'builds without crashing.\'',
        ),
        ResourceContainer<double>(
          resource: ref.watch(secondaryResourcesProvider.select(
            (value) => value.techSkills,
          )),
          label: 'Dev tools',
          resourceToString: (value) => value.toString(),
          description:
              'Turn your \'it works on my machine\' into \'it works on everyone\'s machine.\'\nSpeeds up projects and enables automation features.',
        ),
        ResourceContainer<double>(
          resource: ref.watch(secondaryResourcesProvider.select(
            (value) => value.devTools,
          )),
          label: 'Tech skills',
          resourceToString: (value) => value.toString(),
          description:
              'Because Stack Overflow nor ChatGpt do not count as a skill by themselves.\nEnables more complex projects, better rewards, and eventually the power to mentor others without googling everything first.',
        ),
        ResourceContainer<double>(
          resource: ref.watch(secondaryResourcesProvider.select(
            (value) => value.hardware,
          )),
          label: 'Hardware power',
          resourceToString: (value) => value.toString(),
          description:
              'From \'Not sure it can even run Doom\' to \'Yes, it can run Crysis AND Docker.\'\nReduces project cooldowns and enables passive gains from your totally unique SaaS projects.',
        )
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
