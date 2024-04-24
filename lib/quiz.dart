import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_screen.dart';
import 'package:first_app/solution12/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  //late Widget? activeScreen;
  var activeScreen = "active-screen";

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "active-screen";
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        //solution12
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          //child: activeScreen == "active-screen" ? StartScreen(switchScreen) :const  QuestionScreen(),
          child: screenWidget,
        ),
        //challenge
        // body: GradientTemplate([
        // Color.fromARGB(255, 120, 49, 244),
        // Color.fromARGB(255, 106, 67, 168),
        // ],
        // ),
        //Dice app
        // body: GradientContainer( [
        //     Color.fromARGB(255, 74, 156, 15),
        //     Color.fromARGB(255, 100, 56, 176),
        //     Color.fromARGB(255, 164, 42, 42),
        //   ],),
      ),
    );
  }
}
