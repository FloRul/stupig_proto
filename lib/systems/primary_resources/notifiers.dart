import 'dart:convert';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/notifiers.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class Experience extends _$Experience {
  @override
  ExperienceState build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (event) => event.maybeMap(
          rewardEarned: (e) {
            var newXp = state.xp + Random().nextInt(e.reward.maxXpAmount + 1) + e.reward.minXpAmount;
            if (newXp >= state.xpToNextLevel) {
              ref.read(eventBusProvider.notifier).publish(const GameEvent.levelUp());
            } else {
              state = state.copyWith(
                xp: newXp,
              );
            }
          },
          levelUp: (_) => _levelUp(),
          saveGame: (e) async => await _save(),
          loadGame: (value) => retrieve(),
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

  Future<bool> _save() async {
    final prefs = ref.read(sharedPrefsProvider).value!;
    return prefs.setString(
      kXpKey,
      jsonEncode(
        state.toJson(),
      ),
    );
  }

  void retrieve() async {
    final stateJson = ref.read(sharedPrefsProvider).value!.getString(
          kXpKey,
        );
    if (stateJson != null) {
      state = ExperienceState.fromJson(
        jsonDecode(
          stateJson,
        ),
      );
    }
  }
}

@Riverpod(keepAlive: true)
class Money extends _$Money {
  @override
  int build() {
    ref.listen(eventBusProvider, (previous, next) {
      next.whenData(
        (e) => e.maybeMap(
          rewardEarned: (e) {
            state += Random().nextInt(e.reward.maxMoneyAmount + 1 - e.reward.minMoneyAmount) + e.reward.minMoneyAmount;
          },
          purchase: (e) {
            final cost = ref.read(secResourcesProvider)[e.type.type]!.cost;
            assert(state >= cost);
            state -= cost;
          },
          saveGame: (e) async => await _save(),
          loadGame: (value) => retrieve(),
          orElse: () {},
        ),
      );
    });
    return 0;
  }

  Future<bool> _save() async {
    final prefs = ref.read(sharedPrefsProvider).value!;
    return prefs.setInt(kMoneyKey, state);
  }

  void retrieve() async {
    final money = ref.read(sharedPrefsProvider).value!.getInt(
          kMoneyKey,
        );
    if (money != null) {
      state = money;
    }
  }
}
