import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/projects_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/active_project_card.dart';
import 'package:stupig_proto/widgets/inactive_project_card.dart';

class InprogressProjects extends ConsumerWidget {
  const InprogressProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var activeProjects = ref.watch(activeProjectsStateNotifierProvider);
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'In progress',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Expanded(
          child: DragTarget<Project>(
            onWillAcceptWithDetails: (d) {
              return true;
            },
            onAcceptWithDetails: (details) => ref
                .read(
                  activeProjectsStateNotifierProvider.notifier,
                )
                .activateProject(
                  details.data,
                ),
            builder: (context, candidateData, rejectedData) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: candidateData.isNotEmpty ? Colors.green : Colors.red,
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: activeProjects.map((project) {
                      return SizedBox(
                        width: 200, // Set your desired width
                        child: AspectRatio(
                          aspectRatio: kCardAspectRatio,
                          child: ActiveProjectCard(
                            project: project,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
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
    var inactiveProjects = ref.watch(inactiveProjectsNotifierProvider);
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: inactiveProjects.map((project) {
        return SizedBox(
          width: 200, // Same width as in InprogressProjects
          child: AspectRatio(
            aspectRatio: kCardAspectRatio,
            child: Draggable(
              feedback: SizedBox(
                width: 200, // Matching width for consistency
                child: AspectRatio(
                  aspectRatio: kCardAspectRatio,
                  child: InactiveProjectCard(
                    project: project,
                  ),
                ),
              ),
              data: project,
              child: InactiveProjectCard(
                project: project,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
