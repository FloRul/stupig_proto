import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class FeatureUnlockNotifier extends _$FeatureUnlockNotifier {
  @override
  FeaturesState build() => FeaturesState.initial();
}
