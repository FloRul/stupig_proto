import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class SecResources extends _$SecResources {
  @override
  Map<ResourceType, Resource> build() {
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
      state = {...state, type: state[type]!.upgrade()};
    }
  }
}
