import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class FeatureUnlockNotifier extends _$FeatureUnlockNotifier {
  @override
  FeaturesState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            unlockFeature: (e) => _unlockFeature(e.feature),
            orElse: () {},
          ),
        );
      },
    );
    return FeaturesState.initial();
  }

  void _unlockFeature(Feature feature) {
    state = state.copyWith(
      features: {
        ...state.features,
        feature: true,
      },
    );
  }
}
