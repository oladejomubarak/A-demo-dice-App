import 'package:flutter/material.dart';
import 'package:first_app/gradient_container_file.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer( [
            Color.fromARGB(255, 74, 156, 15),
            Color.fromARGB(255, 100, 56, 176),
            Color.fromARGB(255, 164, 42, 42),
          ],)),
    ),
  );
}
