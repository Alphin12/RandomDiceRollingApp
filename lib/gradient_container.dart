import 'package:diceapp/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget 
{
  const GradientContainer(this.colours,{super.key}); //is a ctor fn tht accepts a key and passes to its superclass StatelessWidget
  
  final List<Color> colours;
 

  @override
  Widget build(context) // build is called automatically by flutter.
  {
    return Container(                //after return paste the widgets we want to reuse everytime.
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colours,
          begin:startAlignment, // ie gradient starts from topleft to bottomright
          end: endAlignment,
        ),
      ),
      child:const Center(                                       //made it centre
      child: DiceRoller(),
      ),
    );
  }
}
