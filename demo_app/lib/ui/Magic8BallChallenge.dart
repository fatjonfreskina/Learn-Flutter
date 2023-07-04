import 'package:flutter/material.dart';
import 'dart:math';
import 'my_navigation_drawer.dart';

class Magic8BallChallenge extends StatefulWidget {
  const Magic8BallChallenge ({Key? key}) : super(key: key);

  @override
  State<Magic8BallChallenge> createState() => _Magic8BallChallengeState();
}

class _Magic8BallChallengeState extends State<Magic8BallChallenge> {

  int ballNumber = 1;

  void generateNumber(){
    setState(() {
      ballNumber = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
        backgroundColor: Color(0xFF1e2460),
        title: const Text('Magic 8 Ball', style: TextStyle(color: Colors.white),),
    ),
    drawer: const MyNavigationDrawer(),
    body: Container(

      child: Center(child: TextButton(onPressed: () {
        generateNumber();
        // print(ballNumber);
        },
      child: Image.asset('assets/images/ball$ballNumber.png'))),
    ),

    );
  }
}
