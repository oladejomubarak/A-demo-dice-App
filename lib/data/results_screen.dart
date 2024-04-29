import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_summary.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/solution12/start_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsScreen extends StatefulWidget {
  ResultsScreen({super.key, required this.chosenAnswers});

  List<String> chosenAnswers = [];

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  var activeScreen = "active-screen";
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': widget.chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'quiz-screen') {
      screenWidget = const Quiz();
    }
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnwsers = summaryData.where((data) {
      return data['user_answer'] == ['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAnwsers out $numTotalQuestions questions correctly!",
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                StartScreen(switchScreen);
              },
              icon: const Icon(Icons.restart_alt),
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 212, 207, 251),
              ),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(color: Color.fromARGB(255, 212, 207, 251)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
