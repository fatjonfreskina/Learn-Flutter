import 'dart:math';

import 'package:demo_app/ui/my_navigation_drawer.dart';
import 'package:flutter/material.dart';

class DiceChallenge extends StatefulWidget {
  const DiceChallenge({Key? key}) : super(key: key);

  @override
  State<DiceChallenge> createState() => _DiceChallengeState();

}

class _DiceChallengeState extends State<DiceChallenge> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = (Random().nextInt(6) + 1);
      rightDiceNumber = (Random().nextInt(6) + 1);
    });

  }

  // This method is excecuted when you hot reload
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dice Page'),
      ),
      drawer: const MyNavigationDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                // flex: 2, // left takes twice the space!
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){
                      changeDiceFace();
                    },
                      child: Image.asset('assets/images/dice$leftDiceNumber.png')),
                ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){ // requires a VOID CALLBACK
                      changeDiceFace();
                    }, // anonymous function!
                      child: Image.asset('assets/images/dice$rightDiceNumber.png')),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Another row!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
