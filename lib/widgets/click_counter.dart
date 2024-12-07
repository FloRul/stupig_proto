import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/click_stream/click_handling.dart';

class ClickCounter extends ConsumerWidget {
  const ClickCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(ref.watch(clickCountProvider).toString());
  }
}
