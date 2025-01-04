import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:uuid/uuid.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class ActiveProjectsNotifier extends _$ActiveProjectsNotifier {
  @override
  List<ProjectState> build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (e) => _handleStartProject(e.project),
            projectCompleted: (e) => _handleCompletedProject(e.project),
            orElse: () {},
          ),
        );
      },
    );
    ref.listen(
      globalTickerProvider,
      (previous, next) => _handleTick(),
    );
    return [];
  }

  void _handleStartProject(Project project) {
    state = [
      ...state,
      ProjectState.activeFromProject(
        project,
        Random().nextInt(2),
      )
    ];
  }

  void _handleTick() {
    state = [
      for (var p in state)
        p.copyWith(
          completion: p.completion.tick(),
        ),
    ];
  }

  void _handleCompletedProject(Project project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.moneyEarned(amount: project.reward.moneyAmount));
    ref.read(eventBusProvider.notifier).publish(GameEvent.xpEarned(amount: project.reward.xpAmount));

    state = [
      for (var p in state)
        if (p.project.id != project.id) p,
    ];
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectsNotifier extends _$AvailableProjectsNotifier {
  @override
  List<Project> build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (pStarted) => handleStartProject(pStarted.project),
            orElse: () {},
          ),
        );
      },
    );
    return [
      Project(
        id: const Uuid().v4(),
        name: 'Project 1',
        description: 'Project 1 Description',
        reward: const ProjectReward(
          moneyAmount: 1,
          xpAmount: 1,
        ),
      ),
    ];
  }

  Future<void> handleStartProject(Project project) async {
    state = [
      for (var p in state)
        if (p.id != project.id) p,
    ];
    var nextProject = await fetchNewProject();
    state = [...state, nextProject];
  }

  Future<Project> fetchNewProject() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO call API to fetch new project
    var id = Random().nextInt(100000).toString();
    return Project(
      id: const Uuid().v4(),
      name: 'Project $id',
      description: 'Project $id Description',
      reward: ProjectReward(
        moneyAmount: 1,
        xpAmount: 1 + ref.read(experienceNotifierProvider).level * Random().nextInt(10),
      ),
    );
  }
}
