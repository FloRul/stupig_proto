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
class ProjectsNotifier extends _$ProjectsNotifier {
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
        p.maybeMap(
          available: (availableState) => availableState.copyWith(
            cooldown: availableState.cooldown?.tick(),
          ),
          orElse: () => p,
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
  List<ProjectState> build() {
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
    ref.listen(
      globalTickerProvider,
      (previous, next) => handleTick(),
    );

    return [
      ProjectState.availableInitial(
        Project(
          id: const Uuid().v4(),
          name: 'Project 1',
          description: 'Project 1 Description',
          reward: const ProjectReward(
            moneyAmount: 1,
            xpAmount: 1,
          ),
        ),
      ),
    ];
  }

  void handleTick() {
    state = [
      for (var p in state)
        p.maybeMap(
          available: (availableState) => availableState.copyWith(
            cooldown: availableState.cooldown?.tick(),
          ),
          orElse: () => p,
        ),
    ];
  }

  Future<void> handleStartProject(Project project) async {
    state = [
      for (var p in state)
        if (p.project.id != project.id) p,
    ];
    var nextProject = await fetchNewProject();
    state = [...state, nextProject];
  }

  Future<ProjectState> fetchNewProject() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO call API to fetch new project
    var id = Random().nextInt(100000).toString();
    return ProjectState.availableInitial(
      Project(
        id: const Uuid().v4(),
        name: 'Project $id',
        description: 'Project $id Description',
        reward: ProjectReward(
          moneyAmount: 1,
          xpAmount: 1 + ref.read(experienceNotifierProvider).level * Random().nextInt(10),
        ),
      ),
    );
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectNotifier extends _$AvailableProjectNotifier {
  @override
  ProjectState build(ProjectState projectState) {
    ref.listen(
      globalTickerProvider,
      (previous, next) => tick(),
    );
    return projectState;
  }

  void tick() {
    state = state.maybeMap(
      available: (availableState) => availableState.copyWith(
        cooldown: availableState.cooldown?.tick(),
      ),
      orElse: () {
        throw StateError('Invalid state');
      },
    );
  }
}
