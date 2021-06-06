import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                  color: Colors.red,
                  soundNumber: 1,
                  text: '',
                ),
                buildKey(
                  color: Colors.orange,
                  soundNumber: 2,
                  text: '',
                ),
                buildKey(
                  color: Colors.yellow,
                  soundNumber: 3,
                  text: '',
                ),
                buildKey(
                  color: Colors.green,
                  soundNumber: 4,
                  text: '',
                ),
                buildKey(
                  color: Colors.blue,
                  soundNumber: 5,
                  text: '',
                ),
                buildKey(
                  color: Colors.purple[300],
                  soundNumber: 6,
                  text: '',
                ),
                buildKey(
                  color: Colors.purple,
                  soundNumber: 7,
                  text: '',
                ),
                buildKey(
                  color: Colors.white,
                  soundNumber: 8,
                  text: 'jackpot',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildKey({Color color, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
