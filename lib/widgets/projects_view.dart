import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/models/models.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/project_card.dart';

class InprogressProjects extends ConsumerWidget {
  const InprogressProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (gameState) {
            final inProgressProjects = gameState.projects.where((p) => p.status == ProjectStatus.inProgress).toList();
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'In progress',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('${gameState.usedRam} / ${gameState.ram} GB (RAM)', style: const TextStyle(fontSize: 20)),
                  ],
                ),
                Expanded(
                  child: DragTarget<Project>(
                    onWillAcceptWithDetails: (d) {
                      return d.data.status == ProjectStatus.notStarted && gameState.satisfyPrereq(d.data.prerequisite);
                    },
                    onAcceptWithDetails: (details) =>
                        ref.read(gameStateNotifierProvider.notifier).startProject(details.data),
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: candidateData.isNotEmpty ? Colors.green : Colors.red,
                              width: 2,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: inProgressProjects.length,
                          itemBuilder: (context, index) {
                            final project = inProgressProjects[index];
                            return ProjectCard(
                              project: project,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) => const Center(
            child: Text('An error has occurred'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}

class NotStartedProjects extends ConsumerWidget {
  const NotStartedProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (gameState) {
            final notStartedProjects = gameState.projects.where((p) => p.status == ProjectStatus.notStarted).toList();
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: notStartedProjects.length,
              itemBuilder: (context, index) {
                final project = notStartedProjects[index];
                return AspectRatio(
                  aspectRatio: kCardAspectRatio,
                  child: Draggable(
                    feedback: ProjectCard(
                      project: project,
                    ),
                    data: project,
                    child: ProjectCard(
                      project: project,
                    ),
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) => const Center(
            child: Text('An error has occurred'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
