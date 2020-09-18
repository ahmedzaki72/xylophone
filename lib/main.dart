import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xylophone',
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void soundAudio(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildingKey(Color colors, int number){
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          soundAudio(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildingKey(Colors.red, 1),
            buildingKey(Colors.orange, 2),
            buildingKey(Colors.yellow, 3),
            buildingKey(Colors.green, 4),
            buildingKey(Colors.teal, 5),
            buildingKey(Colors.blue, 6),
            buildingKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}


//Expanded(
//child: FlatButton(
//color: Colors.orange,
//onPressed: () {
//soundAudio(2);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.yellow,
//onPressed: () {
//soundAudio(3);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.green,
//onPressed: () {
//soundAudio(4);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.teal,
//onPressed: () {
//soundAudio(5);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blue,
//onPressed: () {
//soundAudio(6);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.purple,
//onPressed: () {
//soundAudio(7);
//},
//),
//),