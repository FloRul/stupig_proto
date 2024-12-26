import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/models.dart';
part 'resource_notifier.g.dart';

@Riverpod(keepAlive: true)
class ExperienceNotifier extends _$ExperienceNotifier {
  @override
  ExperienceState build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (event) => event.maybeMap(
          projectCompleted: (pCompleted) {
            var newXp = state.xp + pCompleted.project.reward.xpAmount;
            if (newXp >= state.xpToNextLevel) {
              ref.read(eventBusProvider.notifier).publish(const GameEvent.levelUp());
            } else {
              state = state.copyWith(
                xp: newXp,
              );
            }
          },
          levelUp: (_) => _levelUp(),
          orElse: () {},
        ),
      );
    });
    return ExperienceState.initial();
  }

  void _levelUp() {
    state = state.copyWith(
      level: state.level + 1,
      xp: 0,
    );
  }
}

@Riverpod(keepAlive: true)
class MoneyNotifier extends _$MoneyNotifier {
  @override
  int build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (event) => event.maybeMap(
          projectCompleted: (pCompleted) => state = state + pCompleted.project.reward.moneyAmount,
          orElse: () {},
        ),
      );
    });
    return 0;
  }
}
