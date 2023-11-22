import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$number.wav'),
    );
  }

  Expanded doTask(Color color, int number) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          color: color,
        ),
        onPressed: () {
          playSound(number);
        },
        // for playing form the net use the  UrlSource ()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              doTask(Colors.red, 1),
              doTask(Colors.orange, 2),
              doTask(Colors.green, 3),
              doTask(Colors.teal, 4),
              doTask(Colors.yellow, 5),
              doTask(Colors.blue, 6),
              doTask(Colors.purpleAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
