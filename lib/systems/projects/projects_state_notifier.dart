import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';

part 'projects_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class ActiveProjectsStateNotifier extends _$ActiveProjectsStateNotifier {
  @override
  List<Project> build() => [];

  void activateProject(Project project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectStarted(project));
    state = [...state, project];
  }

  void completeProject(Project project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(project));
    state = state.where((p) => p != project).toList();
  }
}

@Riverpod(keepAlive: true)
class CompletedProjectsStateNotifier extends _$CompletedProjectsStateNotifier {
  @override
  List<Project> build() {
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
