import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/notifiers.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
import 'package:stupig_proto/utils/constants.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class SecResources extends _$SecResources {
  @override
  Map<ResourceType, Resource> build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            saveGame: (e) async => await _save(),
            loadGame: (value) => retrieve(),
            orElse: () {},
          ),
        );
      },
    );

    return {
      ResourceType.devTools: const Resource.multiplied(
        baseCost: 10,
        baseValue: 1,
        costMultiplier: 1.2,
        valueMultiplier: 1.1,
      ),
      ResourceType.hardwarePower: const Resource.multiplied(
        baseCost: 10,
        baseValue: 1,
        costMultiplier: 1.2,
        valueMultiplier: 1.1,
      ),
      ResourceType.techSkills: const Resource.incremented(
        baseCost: 10,
        baseValue: 1,
        costMultiplier: 1.2,
      ),
      ResourceType.focusPoints: const Resource.incremented(
        baseCost: 100,
        baseValue: 2,
        costMultiplier: 1.2,
      ),
    };
  }

  void upgrade(ResourceType type) {
    final currentMoney = ref.read(moneyProvider);
    if (currentMoney >= state[type]!.cost) {
      ref.read(eventBusProvider.notifier).publish(GameEvent.purchase(
            type: PurchaseType.resourceUpgrade(
              type: type,
            ),
          ));
      state = {...state, type: state[type]!.upgrade()};
    }
  }

  Future<bool> _save() async {
    final prefs = ref.read(sharedPrefsProvider).value!;
    return prefs.setString(
      kSecResourcesKey,
      jsonEncode(
        Map.fromEntries(
          state.entries.map(
            (entry) => MapEntry(entry.key.name, entry.value.toJson()),
          ),
        ),
      ),
    );
  }

  void retrieve() async {
    final stateRawJson = ref.read(sharedPrefsProvider).value!.getString(
          kSecResourcesKey,
        );
    if (stateRawJson != null) {
      final stateJson = jsonDecode(stateRawJson) as Map<String, dynamic>;
      state = Map.fromEntries(
        ResourceType.values.map(
          (type) => MapEntry(
            type,
            Resource.fromJson(stateJson[type.name] as Map<String, dynamic>),
          ),
        ),
      );
    }
  }
}
