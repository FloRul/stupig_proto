import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/initialization/notifiers.dart';
import 'package:stupig_proto/theme.dart';
import 'clicker_game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  final player = AudioPlayer();
  await player.setReleaseMode(ReleaseMode.loop);
  await player.setSource(AssetSource('sounds/theme00.mp3'));
  runApp(ProviderScope(
      child: MyApp(
    player: player,
  )));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({required this.player, super.key});

  final AudioPlayer player;

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late bool _isPlaying;

  @override
  void initState() {
    _isPlaying = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!_isPlaying) {
          setState(() {
            _isPlaying = true;
          });
          await widget.player.resume();
        }
      },
      behavior: HitTestBehavior.translucent,
      child: MaterialApp(
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
      ),
    );
  }
}
