// ignore_for_file: deprecated_member_use
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color? color, required int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
        child: Row(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 2),
              buildkey(color: Colors.green, soundnumber: 3),
              buildkey(color: Colors.blue, soundnumber: 4),
              buildkey(color: Colors.yellow, soundnumber: 5),
              buildkey(color: Colors.purple, soundnumber: 6),
              buildkey(color: Colors.pink, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
