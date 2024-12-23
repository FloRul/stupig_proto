import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class SecondaryResourcesNotifier extends _$SecondaryResourcesNotifier {
  @override
  SecondaryResourceState build() {
    return SecondaryResourceState.initial();
  }
}
