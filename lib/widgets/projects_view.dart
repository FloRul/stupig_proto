import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/models/models.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/flippable_card.dart';

class ProjectsView extends ConsumerWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (gameState) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DragTarget<Project>(
                  onWillAcceptWithDetails: (d) => d.data.status == ProjectStatus.notStarted && gameState.satisfyPrereq(d.data.prerequisite),
                  onAcceptWithDetails: (details) => ref.read(gameStateNotifierProvider.notifier).startProject(details.data),
                  builder: (context, candidateData, rejectedData) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: gameState.projects.where((p) => p.status == ProjectStatus.inProgress).length,
                    itemBuilder: (context, index) => Draggable(
                      feedback: SizedBox(
                        height: kCardHeight,
                        width: kCardWidth,
                        child: FlippableCard(
                          title: gameState.projects[index].name,
                          backContent: Text(gameState.projects[index].description),
                        ),
                      ),
                      child: SizedBox(
                        height: kCardHeight,
                        width: kCardWidth,
                        child: FlippableCard(
                          title: gameState.projects[index].name,
                          backContent: Text(gameState.projects[index].description),
                        ),
                      ),
                    ),
                  ),
                ), // First section
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: gameState.projects.where((p) => p.status == ProjectStatus.notStarted).length,
                  itemExtent: kCardHeight,
                  itemBuilder: (context, index) => Draggable(
                    feedback: SizedBox(
                      height: kCardHeight,
                      width: kCardWidth,
                      child: FlippableCard(
                        title: gameState.projects[index].name,
                        backContent: Text(gameState.projects[index].description),
                      ),
                    ),
                    child: FlippableCard(
                      title: gameState.projects[index].name,
                      backContent: Text(gameState.projects[index].description),
                    ),
                  ),
                ), // Second section
              ),
            ],
          ),
          error: (error, stackTrace) => const Center(
            child: Text('An error has occured'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
