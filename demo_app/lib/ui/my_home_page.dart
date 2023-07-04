import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_navigation_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late SharedPreferences prefs;
  String? name = "";
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  Future<void> initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    debugPrint("Name: $name");
    if (prefs.getString('name') != null){
      setState(() {
        name = prefs.getString('name');
      });
      debugPrint("Name inside if: $name");
    }
  }

  void _setName(String newName) {
    prefs.setString('name', newName);
  }

  void _incrementCounter() {
    setState(() {
      _setName(_nameController.text);
      name = prefs.getString('name');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      drawer: const MyNavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text('Hello $name!'),
            const Image(
              image: AssetImage("assets/images/icons8_ape_80.png"),
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
        },
        tooltip: 'Increment',
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

