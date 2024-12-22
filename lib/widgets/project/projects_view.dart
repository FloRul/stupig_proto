import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/projects_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/project/active_project_card.dart';
import 'package:stupig_proto/widgets/project/inactive_project_card.dart';

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
            onAcceptWithDetails: (details) =>
                ref.read(activeProjectsStateNotifierProvider.notifier).addProject(details.data),
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
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
                    return GridView.builder(
                      padding: const EdgeInsets.all(8.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
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
    var inactiveProjects = ref.watch(inactiveProjectsNotifierProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
        return GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: kCardAspectRatio,
          ),
          itemCount: inactiveProjects.length,
          itemBuilder: (context, index) {
            return Draggable<Project>(
              feedback: SizedBox(
                width: 150,
                child: AspectRatio(
                  aspectRatio: kCardAspectRatio,
                  child: InactiveProjectCard(project: inactiveProjects[index]),
                ),
              ),
              data: inactiveProjects[index],
              child: InactiveProjectCard(project: inactiveProjects[index]),
            );
          },
        );
      },
    );
  }
}
