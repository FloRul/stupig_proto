import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/utils/constants.dart';

part 'active_project_notifier.g.dart';

@Riverpod(keepAlive: true)
class ActiveProjectsNotifier extends _$ActiveProjectsNotifier {
  @override
  ActiveProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (e) => _handleStartProject(e.project),
            orElse: () {},
          ),
        );
      },
    );
    ref.listen(
      globalTickerProvider,
      (previous, next) => _handleTick(),
    );
    return ActiveProjectsState.initial();
  }

  void _handleStartProject(Project project) {
    state = state.copyWith(
      activeProjects: [
        ...state.activeProjects,
        (project, Completion.initial(kBaseCompletionTime), null),
      ],
    );
  }

  void _handleTick() {
    List<(Project, Completion, bool?)> updatedProjects = [];

    for (var t in state.activeProjects) {
      if (t.$3 != null) {
        // Project already has completion result, keep as is
        updatedProjects.add(t);
        continue;
      }

      final newC = t.$2.tick();

      if (newC.isComplete && t.$3 == null) {
        // Only calculate success if not already determined
        final success = Random().nextDouble() * 100 > t.$1.reward.failRate;
        updatedProjects.add((t.$1, newC, success));
      } else {
        updatedProjects.add((t.$1, newC, t.$3));
      }
    }

    state = state.copyWith(activeProjects: updatedProjects);
  }

  void completeProject(Project project) {
    final projectTuple = state.activeProjects.firstWhere((p) => p.$1 == project);

    if (projectTuple.$3 == true) {
      // Check if project was successful
      ref.read(eventBusProvider.notifier).publish(
            GameEvent.rewardEarned(reward: project.reward),
          );
    }

    state = state.copyWith(
      activeProjects: state.activeProjects.where((p) => p.$1 != project).toList(),
    );
  }
}
