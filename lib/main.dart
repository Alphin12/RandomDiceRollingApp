import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';   //coz we call tht custom widget here

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(                        // for good looking screen
        body:
            GradientContainer( [Color.fromARGB(255, 78, 18, 181),Color.fromARGB(255, 80, 0, 127)]), //calling the class we want to reuse ie calling custom widget, this is a constructor.
      ),
    ),
  );
}
