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
  ProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (pStarted) => _handleStartProject(pStarted.project),
            projectCompleted: (pCompleted) => _handleCompletedProject(pCompleted.project),
            orElse: () {},
          ),
        );
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
        )
      ],
    );
  }

  void _handleCompletedProject(Project project) {
    if (state.completedProjects.any((p) => p.id == project.id)) {
      return;
    }

    ref.read(eventBusProvider.notifier).publish(GameEvent.moneyEarned(amount: project.reward.moneyAmount));
    ref.read(eventBusProvider.notifier).publish(GameEvent.xpEarned(amount: project.reward.xpAmount));

    var newActiveProjects = state.activeProjects.where((p) => p.project.id != project.id).toList();

    state = state.copyWith(
      activeProjects: newActiveProjects,
      completedProjects: [...state.completedProjects, project],
    );
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectsNotifier extends _$AvailableProjectsNotifier {
  @override
  List<AvailableProjectState> build() {
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

    return [
      AvailableProjectState.initial(
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

  Future<void> _handleStartProject(Project project) async {
    state = [
      for (var p in state)
        if (p.project.id != project.id) p,
    ];
    var nextProject = await _fetchNewProject();
    state = [...state, nextProject];
  }

  Future<AvailableProjectState> _fetchNewProject() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO call API to fetch new project
    var id = Random().nextInt(100000).toString();
    return AvailableProjectState.initial(
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
