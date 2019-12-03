import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int audioNumber) {
    final player = new AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded buildKey({int keyNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(keyNumber: 1, keyColor: Colors.red),
            buildKey(keyNumber: 2, keyColor: Colors.orange),
            buildKey(keyNumber: 3, keyColor: Colors.yellow),
            buildKey(keyNumber: 4, keyColor: Colors.green),
            buildKey(keyNumber: 5, keyColor: Colors.teal),
            buildKey(keyNumber: 6, keyColor: Colors.blue),
            buildKey(keyNumber: 7, keyColor: Colors.purple),
          ],
        )),
      ),
    );
  }
}
