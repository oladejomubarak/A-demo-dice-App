//import 'package:first_app/challenge02/gradient_template_file.dart';
import 'package:first_app/solution12/start_screen.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/gradient_container_file.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
            //solution12
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Color.fromARGB(255, 78, 13, 151),
                    Color.fromARGB(255, 107, 15, 168),
                  ], ),),
              child: const StartScreen(),
              
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
    ),
  );
}
