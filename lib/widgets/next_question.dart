import 'package:flutter/material.dart';
import '../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});
  //final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      decoration:BoxDecoration(
     color: neutral,
     borderRadius: BorderRadius.circular(10.0),
       ),
      padding:const EdgeInsets.symmetric(vertical: 10.0),
      child: const Text(
        'Next Question', textAlign: TextAlign.center,
      ),
    );
  }
}