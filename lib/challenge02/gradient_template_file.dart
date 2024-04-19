import 'package:first_app/challenge02/learn_flutter.dart';
import 'package:flutter/material.dart';

class GradientTemplate extends StatelessWidget {
  const GradientTemplate(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: LearnFlutter("Learn Flutter the fun way!"),
      ), 
      
    );
  }
}
