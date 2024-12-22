import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/state_management/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

part 'projects_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class ActiveProjectsStateNotifier extends _$ActiveProjectsStateNotifier {
  @override
  List<ProjectState> build() {
    ref.listen(
      globalTickerProvider,
      (previous, next) {
        for (int i = 0; i < state.length; i++) {
          ref.read(projectNotifierProvider(state[i]).notifier).tick();
        }
      },
    );
    return [];
  }

  void activateProject(Project project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(project));
    state = [...state, ProjectState.fromProject(project, Random().nextInt(50))];
  }

  void completeProject(ProjectState project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(project));
    state = state.where((p) => p != project).toList();
  }
}

@Riverpod(keepAlive: true)
class CompletedProjectsStateNotifier extends _$CompletedProjectsStateNotifier {
  @override
  List<ProjectState> build() {
    ref.listen(
      eventBusProvider,
      (previous, next) => next.whenData(_handleProjectCompleted),
    );
    return [];
  }

  void _handleProjectCompleted(GameEvent event) {
    event.maybeMap(
      projectCompleted: (event) => state = [...state, event.project],
      orElse: () {},
    );
  }
}

@Riverpod(keepAlive: true)
class ProjectNotifier extends _$ProjectNotifier {
  @override
  ProjectState build(ProjectState projectState) => projectState;

  void tick() {
    state = state.copyWith(completion: state.completion.tick());
    if (state.completion.isComplete) {
      ref.read(activeProjectsStateNotifierProvider.notifier).completeProject(state);
    }
  }
}

@Riverpod(keepAlive: true)
class InactiveProjectsNotifier extends _$InactiveProjectsNotifier {
  @override
  List<Project> build() => [
        const Project(id: '1', name: 'Project 1', description: 'Description 1'),
        const Project(id: '2', name: 'Project 2', description: 'Description 2'),
        const Project(id: '3', name: 'Project 3', description: 'Description 3'),
      ];

  void startProject(Project project) {
    state = [for (var p in state.where((p) => p != project)) p];
    // generate new project
    // ...
  }
}
