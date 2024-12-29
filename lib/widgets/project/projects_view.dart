import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/project/project_card.dart';

class InprogressProjects extends ConsumerStatefulWidget {
  const InprogressProjects({super.key});

  @override
  ConsumerState<InprogressProjects> createState() => _InprogressProjectsState();
}

class _InprogressProjectsState extends ConsumerState<InprogressProjects> {
  @override
  Widget build(BuildContext context) {
    var activeProjects = ref.watch(projectsNotifierProvider.select((value) => value.activeProjects));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: GlassmorphicContainer(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'In progress',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: DragTarget<AvailableProjectState>(
            onWillAcceptWithDetails: (d) => true,
            onAcceptWithDetails: (details) async =>
                ref.read(availableProjectsNotifierProvider.notifier).startProject(details.data),
            builder: (context, candidateData, rejectedData) {
              return GlassmorphicContainer(
                isHighlighted: candidateData.isNotEmpty,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
                    return GridView.builder(
                      // key: _gridKey,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: kCardAspectRatio,
                      ),
                      itemCount: activeProjects.length,
                      itemBuilder: (context, index) {
                        return ActiveProjectCard(project: activeProjects[index]);
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class InactiveProjects extends ConsumerWidget {
  const InactiveProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var availableProjects = ref.watch(availableProjectsNotifierProvider);
    return GlassmorphicContainer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
          return GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: kCardAspectRatio,
            ),
            itemCount: availableProjects.length,
            itemBuilder: (context, index) {
              return Draggable<AvailableProjectState>(
                feedback: SizedBox(
                  width: 150,
                  child: AspectRatio(
                    aspectRatio: kCardAspectRatio,
                    child: InactiveProjectCard(aPstate: availableProjects[index]),
                  ),
                ),
                data: availableProjects[index],
                child: InactiveProjectCard(aPstate: availableProjects[index]),
              );
            },
          );
        },
      ),
    );
  }
}
