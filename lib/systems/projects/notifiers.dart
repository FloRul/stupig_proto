import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

part 'notifiers.g.dart';

@riverpod
class ActiveProjectNotifier extends _$ActiveProjectNotifier {
  @override
  ActiveProjectState build(ActiveProjectState projectState) {
    return projectState;
  }

  void tick() {
    // Only tick if the project isn't already complete
    if (!state.completion.isComplete) {
      state = state.copyWith(completion: state.completion.tick());
    }
  }

  void complete() {
    ref.read(projectsNotifierProvider.notifier).completeProject(state);
  }
}

@Riverpod(keepAlive: true)
class ProjectsNotifier extends _$ProjectsNotifier {
  @override
  ProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (pStarted) => _handleStartProject(pStarted.project),
            orElse: () {},
          ),
        );
      },
    );
    ref.listen(
      globalTickerProvider,
      (previous, next) {
        // Only tick active and incomplete projects
        for (var p in state.activeProjects) {
          if (!p.completion.isComplete) {
            ref.read(activeProjectNotifierProvider(p).notifier).tick();
          }
        }
      },
    );

    return const ProjectsState(
      activeProjects: [],
      completedProjects: [],
    );
  }

  void _handleStartProject(Project project) {
    state = state.copyWith(
      activeProjects: [
        ...state.activeProjects,
        ActiveProjectState.fromProject(
          project,
          Random().nextInt(2),
          false,
          false,
        )
      ],
    );
  }

  void completeProject(ActiveProjectState projectState) {
    // Check if the project is already in completedProjects to prevent duplicate completions
    if (state.completedProjects.contains(projectState.project)) {
      return;
    }

    ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(
          project: projectState.project,
          tag: runtimeType.toString(),
        ));

    var newActiveProjects = state.activeProjects.where((p) => p.project.id != projectState.project.id).toList();

    state = state.copyWith(
      activeProjects: newActiveProjects,
      completedProjects: [...state.completedProjects, projectState.project],
    );
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectsNotifier extends _$AvailableProjectsNotifier {
  @override
  List<AvailableProjectState> build() {
    return [
      AvailableProjectState.initial(
        const Project(
          id: '1',
          name: 'Project 1',
          description: 'Project 1 Description',
          reward: ProjectReward(
            moneyAmount: 1,
            xpAmount: 1,
          ),
        ),
      ),
    ];
  }

  Future<void> startProject(AvailableProjectState projectState) async {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(project: projectState.project));
    state = [
      for (var p in state)
        if (p != projectState) p,
    ];
    var nextProject = await _fetchNewProject();
    state = [...state, nextProject];
  }

  Future<AvailableProjectState> _fetchNewProject() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO
    var id = Random().nextInt(100).toString();
    return AvailableProjectState.initial(
      Project(
        id: id,
        name: 'Project $id',
        description: 'Project $id Description',
        reward: const ProjectReward(
          moneyAmount: 1,
          xpAmount: 1,
        ),
      ),
    );
  }
}

@riverpod
class AvailableProjectNotifier extends _$AvailableProjectNotifier {
  @override
  AvailableProjectState build(AvailableProjectState projectState) {
    ref.listen(
      globalTickerProvider,
      (previous, next) => tick(),
    );
    return projectState;
  }

  void tick() {
    state = state.copyWith(cooldown: state.cooldown.tick());
  }
}
