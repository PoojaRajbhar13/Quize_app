import 'package:flutter/material.dart';
import '../constants.dart'; //it contain our colors

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key,
   required this.question,
    required this.indexAction,
     required this.totalQuestions});

  //here we need question title and total numbeer of questions,and also the index

final String question;
final int indexAction;
final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
      'Question ${indexAction +1}/$totalQuestions: $question',
      style: const TextStyle(
        fontSize: 24.0,
        color:neutral,

      ),
      
      ),
  
      
    );
  }
}