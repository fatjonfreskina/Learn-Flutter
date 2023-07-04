import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'my_navigation_drawer.dart';
import 'package:english_words/english_words.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$num.wav'));
  }

  Widget buildKey(int soundNum){
    Color color;
    switch (soundNum){
      case 1:
        color = Colors.red;
        break;
      case 2:
        color = Colors.orange;
        break;
      case 3:
        color = Colors.yellow;
        break;
      case 4:
        color = Colors.green;
        break;
      case 5:
        color = Colors.blue;
        break;
      case 6:
        color = Colors.indigo;
        break;
      case 7:
        color = Colors.deepPurple;
        break;
      default:
        color = Colors.grey;
    }

    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: () {
        playSound(soundNum);
      },
      child: Container(
        width: 300,
        child: const ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBDBDBD),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Xylophone',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const MyNavigationDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7)
            ],
          ),
        ),
      )),
    );
  }
}
