import 'package:flutter/material.dart';

class LearnFlutter extends StatelessWidget {
  const LearnFlutter(this.title, {super.key});
  final String title;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 50.0,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 247, 247, 250),
            fontSize: 22.5,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        OutlinedButton(
          onPressed: () {

          },
          child:const Text("Start Quiz",
          style: TextStyle(color: Color.fromARGB(255, 247, 247, 250), fontSize: 18.0,),
          ) 
          ),
      ],
    );
  }
}
