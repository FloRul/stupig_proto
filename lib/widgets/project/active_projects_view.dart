import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/project/project_card/active.dart';

class ActiveProjects extends ConsumerStatefulWidget {
  const ActiveProjects({super.key});

  @override
  ConsumerState<ActiveProjects> createState() => _InprogressProjectsState();
}

class _InprogressProjectsState extends ConsumerState<ActiveProjects> {
  @override
  Widget build(BuildContext context) {
    var activeProjects = ref.watch(activeProjectsNotifierProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: GlassmorphicContainer(
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
        Expanded(
          child: DragTarget<Project>(
            onWillAcceptWithDetails: (d) => true,
            onAcceptWithDetails: (details) async =>
                ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(project: details.data)),
            builder: (context, candidateData, rejectedData) {
              return GlassmorphicContainer(
                isHighlighted: candidateData.isNotEmpty,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: kCardAspectRatio,
                  ),
                  itemCount: activeProjects.length,
                  itemBuilder: (context, index) {
                    return ActiveProjectCard(pState: activeProjects[index]);
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
