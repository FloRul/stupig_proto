import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class Purchase extends _$Purchase {
  @override
  void build() {}

  bool tryPurchase(int price) {
    if (ref.read(moneyProvider) >= price) {
      ref.read(eventBusProvider.notifier).publish(const GameEvent.purchase(type: PurchaseType.focusPoints));
      return true;
    }
    return false;
  }
}
