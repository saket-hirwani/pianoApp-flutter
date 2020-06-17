import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound){
    final player = AudioCache();
    // call this method when desired
    player.play('note$sound.wav');
  }
  Expanded buildKey({Color color,int sound}){
   return Expanded(
      child: FlatButton(

        onPressed: () {
          playSound(sound);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildKey(color: Colors.deepOrange,sound: 1),
                buildKey(color: Colors.yellow,sound: 2),
                buildKey(color: Colors.green,sound: 3),
                buildKey(color: Colors.teal,sound: 4),
                buildKey(color: Colors.purple,sound: 5),
                buildKey(color: Colors.blue,sound: 6),
                buildKey(color: Colors.brown,sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
