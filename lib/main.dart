import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';  

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(                        
        body:
            GradientContainer( [Color.fromARGB(255, 78, 18, 181),Color.fromARGB(255, 80, 0, 127)]), 
      ),
    ),
  );
}
