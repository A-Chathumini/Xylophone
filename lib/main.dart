import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          note,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
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
              buildKey(color: Colors.purple, soundNumber: 1, note: 'A'),
              buildKey(color: Colors.lightGreen, soundNumber: 2, note: 'B'),
              buildKey(color: Colors.lightBlue, soundNumber: 3, note: 'C'),
              buildKey(color: Colors.teal, soundNumber: 4, note: 'D'),
              buildKey(color: Colors.pink.shade100, soundNumber: 5, note: 'E'),
              buildKey(color: Colors.blue, soundNumber: 6, note: 'F'),
              buildKey(color: Colors.lime, soundNumber: 7, note: 'G'),
            ],
          ),
        ),
      ),
    );
  }
}
