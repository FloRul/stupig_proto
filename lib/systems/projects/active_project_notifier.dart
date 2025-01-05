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
        kBaseCompletionTime,
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
