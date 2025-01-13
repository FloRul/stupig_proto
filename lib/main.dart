import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/initialization/notifiers.dart';
import 'package:stupig_proto/theme.dart';
import 'clicker_game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: ref.watch(initializationProvider).when(
            data: (_) => const ClickerGame(),
            loading: () => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, stackTrace) => Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Text(
                    'Error: $error \n $stackTrace',
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
