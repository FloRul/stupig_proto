import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class ProjectNotifier extends _$ProjectNotifier {
  @override
  ActiveProjectState build(ActiveProjectState projectState) {
    // Add a listener to remove completed projects
    listenSelf((previous, next) {
      if (next.completion.isComplete) {
        ref.read(projectsNotifierProvider.notifier).completeProject(next);
      }
    });
    ref.listen(
      globalTickerProvider,
      (previous, next) => tick(),
    );
    return projectState;
  }

  void tick() {
    state = state.copyWith(completion: state.completion.tick());
  }
}

@Riverpod(keepAlive: true)
class ProjectsNotifier extends _$ProjectsNotifier {
  @override
  ProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData((event) => event.maybeMap(
              projectStarted: (pStarted) => _handleStartProject(pStarted.project),
              orElse: () {},
            ));
      },
    );

    return const ProjectsState(
      activeProjects: [],
      completedProjects: [],
    );
  }

  void _handleStartProject(Project project) {
    state = state.copyWith(
      activeProjects: [...state.activeProjects, ActiveProjectState.fromProject(project, Random().nextInt(10))],
    );
  }

  void completeProject(ActiveProjectState projectState) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(projectState));

    final newActiveProjects = [...state.activeProjects];
    newActiveProjects.removeWhere((p) => p.project.id == projectState.project.id);

    state = state.copyWith(
      activeProjects: newActiveProjects,
      completedProjects: [...state.completedProjects, projectState.project],
    );
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectNotifier extends _$AvailableProjectNotifier {
  @override
  List<AvailableProjectState> build() {
    return [];
  }

  void startProject(AvailableProjectState projectState) {
    state = [
      for (var p in state)
        if (p != projectState) p,
    ];

    ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(projectState.project));
    // TODO: fetch new project
  }

  void _fetchNewProject() {
    // TODO
  }
}
