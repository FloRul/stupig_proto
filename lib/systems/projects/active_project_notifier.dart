import 'dart:convert';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/notifiers.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
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
            saveGame: (e) async => await _save(),
            loadGame: (value) => retrieve(),
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
        (project, Completion.initial(ref.read(secResourcesProvider)[ResourceType.devTools]!.value), null),
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

  Future<bool> _save() async {
    final prefs = ref.read(sharedPrefsProvider).value!;
    return prefs.setString(
      kActiveProjectsKey,
      jsonEncode(
        state.toJson(),
      ),
    );
  }

  void retrieve() async {
    final stateJson = ref.read(sharedPrefsProvider).value!.getString(
          kActiveProjectsKey,
        );
    if (stateJson != null) {
      state = ActiveProjectsState.fromJson(
        jsonDecode(
          stateJson,
        ),
      );
    }
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
