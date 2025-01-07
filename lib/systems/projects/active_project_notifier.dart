import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
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
        (project, Completion.initial(kBaseCompletionTime)),
      ],
    );
    // ];
  }

  void _handleTick() {
    state = state.copyWith(
      activeProjects: [
        for (var p in state.activeProjects) (p.$1, p.$2.tick()),
      ],
    );
  }

  bool handleCompletedProject(Project project) {
    bool success = Random().nextDouble() * 100 > project.reward.failRate;
    ref.read(eventBusProvider.notifier).publish(
          GameEvent.rewardEarned(
            reward: project.reward,
          ),
        );

    state = state.copyWith(
      activeProjects: state.activeProjects.where((p) => p.$1 != project).toList(),
    );
    return success;
  }
}
