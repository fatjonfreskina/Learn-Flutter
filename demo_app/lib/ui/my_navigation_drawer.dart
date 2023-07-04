import 'package:demo_app/ui/DestiniPage.dart';
import 'package:flutter/material.dart';

import 'DiceChallenge.dart';
import 'Magic8BallChallenge.dart';
import 'ProfileExamplePage.dart';
import 'QuizPage.dart';
import 'XylophonePage.dart';
import 'my_home_page.dart';
import 'LayoutChallenge.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Wrap(
    runSpacing: 10,
    children: [
      ListTile(
        leading: const Icon(
            Icons.home_outlined,),
        title: const Text('Home'),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Flutter Demo Home Page')));
        },
      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Profile Example'),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileExamplePage()));
        },
      ),
      const Divider(color: Colors.black,),
      ListTile(
        leading: const Icon(Icons.help),
        title: const Text('Help'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.account_tree),
        title: const Text('Layout Challenge'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LayoutChallenge()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.adb),
        title: const Text('Dice Challenge'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DiceChallenge()));
        },
      ),

      ListTile(
        leading: const Icon(Icons.add_chart),
        title: const Text('Magic 8 Ball Challenge'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Magic8BallChallenge()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_business_outlined),
        title: const Text('Xylophoone'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const XylophonePage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_business_outlined),
        title: const Text('Quiz App'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => QuizPage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_business_outlined),
        title: const Text('Destiny page'),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DestinyPage()));
        },
      ),
    ],
  );
}