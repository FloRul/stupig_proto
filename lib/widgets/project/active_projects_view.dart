import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/active_project_notifier.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/debug/group_area.dart';
import 'package:stupig_proto/widgets/project/project_card/project_card.dart';

class ActiveProjects extends ConsumerStatefulWidget {
  const ActiveProjects({super.key});

  @override
  ConsumerState<ActiveProjects> createState() => _ActiveProjectsState();
}

class _ActiveProjectsState extends ConsumerState<ActiveProjects> {
  @override
  Widget build(BuildContext context) {
    var state = ref.watch(activeProjectsNotifierProvider);
    var focusPoints = ref.read(secondaryResourcesNotifierProvider).focusPoints;
    return Column(
      children: [
        Expanded(
          child: DragTarget<Project>(
            onWillAcceptWithDetails: (d) => state.totalFocusPoints + d.data.requiredfocusPoints <= focusPoints,
            onAcceptWithDetails: (details) async =>
                ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(project: details.data)),
            builder: (context, candidateData, rejectedData) {
              return GroupArea(
                title: 'Active Projects',
                isHighlighted: candidateData.isNotEmpty,
                trailing: Row(
                  children: [
                    const Icon(Icons.memory),
                    const SizedBox(width: 8),
                    Text('${state.totalFocusPoints} / $focusPoints'),
                  ],
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: kCardAspectRatio,
                  ),
                  itemCount: state.activeProjects.length,
                  itemBuilder: (context, index) {
                    return ProjectCard(
                        project: state.activeProjects[index].$1, completion: state.activeProjects[index].$2);
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
