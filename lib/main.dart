import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color, soundNumber, key}) {
    return Expanded(
      child: TextButton(
        style:
            TextButton.styleFrom(backgroundColor: color, primary: Colors.white),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text("Note $soundNumber"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                color: Colors.red,
                soundNumber: 1,
                key: const Key('Note 1'),
              ),
              buildKey(
                  color: Colors.orange,
                  soundNumber: 2,
                  key: const Key('Note 2')),
            ],
          ),
        ),
      ),
    );
  }
}
