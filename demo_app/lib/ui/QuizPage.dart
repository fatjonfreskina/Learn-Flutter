import 'package:flutter/material.dart';

import 'my_navigation_drawer.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dice Page'),),
      backgroundColor: Colors.grey.shade900,
      body: const SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0), child: QuizWidget()),
      ),
      drawer: const MyNavigationDrawer(),
    );
  }
}

class QuizWidget extends StatefulWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  List<Widget> scoreKeeper = [];

  List<String> questions = [
    "Is 2 greater than 1?",
    "Are you happy?",
    "Is Jupyter bigger than YourAnus?"
  ];

  int currentIndex = 0;
  var answers = {0: true, 1:true, 2:true};

  void evaluateAnswer(int indexQuestion, bool sentAnswer) {
    setState(() {
      if (answers[indexQuestion] == sentAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }

      incrementIndex();
    });
  }

  void incrementIndex(){
    if (currentIndex < 2){
      currentIndex++;
    } else {
      currentIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[currentIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  evaluateAnswer(currentIndex, true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),

                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  evaluateAnswer(currentIndex, false);
                },
              ),
            ),
          ),
          Row(children: scoreKeeper)
        ]);
  }
}
