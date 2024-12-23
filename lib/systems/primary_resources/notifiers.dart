import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/primary_resources/models.dart';
part 'resource_notifier.g.dart';

@Riverpod(keepAlive: true)
class ExperienceNotifier extends _$ExperienceNotifier {
  @override
  ExperienceState build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (event) => event.maybeMap(
          projectCompleted: (pCompleted) => state = state.copyWith(
            xp: state.xp + pCompleted.project.reward.xpAmount,
          ),
          orElse: () {},
        ),
      );
    });
    return ExperienceState.initial();
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
