import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class SecondaryResources extends _$SecondaryResources {
  @override
  SecondaryResourceState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            purchase: (e) {
              if (e.type == PurchaseType.focusPoints) {
                state = state.copyWith(focusPoints: state.focusPoints + 1);
              }
            },
            orElse: () {},
          ),
        );
      },
    );
    return SecondaryResourceState.initial();
  }
}
