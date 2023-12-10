import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MultiMusic());
}

class MultiMusic extends StatefulWidget {
  const MultiMusic({super.key});

  @override
  _MultiMusicState createState() => _MultiMusicState();
}

int number = 2;

void MusicPlayer(int num) {
  AssetsAudioPlayer.newPlayer().open(Audio("assets/audios/note$num.wav"));
}

Expanded playMusic({required Color color, required int soundNumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(color),
      ),
      onPressed: () {
        MusicPlayer(soundNumber);
      },
      child: const Row(),
    ),
  );
}

class _MultiMusicState extends State<MultiMusic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playMusic(color: Colors.red, soundNumber: 1),
              playMusic(color: Colors.teal, soundNumber: 2),
              playMusic(color: Colors.orange, soundNumber: 3),
              playMusic(color: Colors.purple, soundNumber: 4),
              playMusic(color: Colors.blue, soundNumber: 5),
              playMusic(color: Colors.white, soundNumber: 6),
              playMusic(color: Colors.cyan, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
