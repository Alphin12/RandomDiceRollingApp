import 'package:flutter/material.dart';

class StyledText extends StatelessWidget
{
  const StyledText(this.text,{super.key});    //this.text refers to the text var inside class
  final String text;        // string var initialised with same name as this.blabla.
  
  @override
  Widget build(context)
  {
    return Text(
            text,        
            style:const  TextStyle(
                color: Colors.white,
                fontSize: 28.5),                 //text color and size changed
    );
  }
}