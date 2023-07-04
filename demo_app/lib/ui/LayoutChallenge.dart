import 'package:demo_app/ui/my_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutChallenge extends StatelessWidget {
  const LayoutChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Layout Challenge'),
      ),
      backgroundColor: Colors.teal,
      drawer: const MyNavigationDrawer(),
        body: SafeArea( // Displays things where the user can see them
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(color: Colors.red, height: double.infinity, width: 100, alignment: Alignment.center,child: const Text("data"),),
              Container(color: Colors.amber, width: 100, height: 100, alignment: Alignment.center,child: const Text("world"),),
              Container(color: Colors.blue, width: 100, height: double.infinity, alignment: Alignment.center, )
            ],
          ),
        ),



    );
  }
}