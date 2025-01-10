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
    List<(Project, Completion, bool?)> ongoing = [];
    List<(Project, Completion, bool?)> completed = [];

    for (var t in state.activeProjects) {
      final newC = t.$2.tick();
      bool? success;

      if (newC.isComplete) {
        success = Random().nextDouble() * 100 > t.$1.reward.failRate;
        if (success) {
          ref.read(eventBusProvider.notifier).publish(
                GameEvent.rewardEarned(reward: t.$1.reward),
              );
        }
        completed.add((t.$1, newC, success));
      } else {
        ongoing.add((t.$1, newC, null));
      }
    }

    state = state.copyWith(activeProjects: ongoing);
  }

  void completedProject(Project project) {
    state = state.copyWith(
      activeProjects: state.activeProjects.where((p) => p.$1 != project).toList(),
    );
  }
}
