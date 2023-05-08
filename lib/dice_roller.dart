import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget       //StatefulWidget req 2 classes. 
{
  const DiceRoller({super.key});    //ctor fn
  @override
  State<DiceRoller> createState()     //a must have fn in StatefulWidget public class
  {
    return _DiceRollerState();     // ie calling the private class ctor
  }
}

class _DiceRollerState extends State<DiceRoller>   //private class
{ 
  var currentDiceRoll=2;        //initial img is 2
  
  void rollDice()          //fn invoked in onPress:
  { 
    setState((){                              // use setState() to re-execute build() to display the change in UI
      currentDiceRoll=randomizer.nextInt(6)+1;  // so each time upon pressing the button setState() makes it re-execute build() 
     });
   }
 @override
 Widget build(context)
  {
    return  Column(                              //paste the custom widget
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png',width: 200,),   //$varname injects the number there.
          const SizedBox(height: 20,),                //one way to do padding ie create a 20px emptybox bw image() and Textbutton()
           TextButton(
            onPressed: rollDice,
            style:TextButton.styleFrom(
              //padding: const EdgeInsets.only(top:20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )
            ),
            child:const Text('Roll Dice'))
        ],
        );
  }
}