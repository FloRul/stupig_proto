import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/primary_resources/models.dart';
part 'primary_resource_notifier.g.dart';

@Riverpod(keepAlive: true)
class PrimaryResourceNotifier extends _$PrimaryResourceNotifier {
  @override
  PrimaryResourcesState build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (event) => event.maybeMap(
          projectCompleted: (pCompleted) => state = state.copyWith(
            xp: state.xp + pCompleted.project.reward.xpAmount,
            money: state.money + pCompleted.project.reward.moneyAmount,
          ),
          orElse: () {},
        ),
      );
    });
    return PrimaryResourcesState.initial();
  }
}
