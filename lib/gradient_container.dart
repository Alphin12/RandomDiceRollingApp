import 'package:diceapp/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget 
{
  const GradientContainer(this.colours,{super.key}); 
  
  final List<Color> colours;
 

  @override
  Widget build(context) 
  {
    return Container(                
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colours,
          begin:startAlignment, 
          end: endAlignment,
        ),
      ),
      child:const Center(                                   
      child: DiceRoller(),
      ),
    );
  }
}
