import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/click_stream/click_handling.dart';

class TapArea extends ConsumerWidget {
  const TapArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: ref.read(clickStreamProvider.notifier).emitClick,
      child: Container(
        color: Colors.transparent,
        child: const Center(
          child: Text(
            'TAP TO FILL',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
