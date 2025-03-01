import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter/widgets.dart';
import '../constants.dart';
  

  class ResultBox extends StatelessWidget {
  const ResultBox({super.key, 
  required this.result,
   required this.questionLength,
   required this.onPressed,
   });
final int result;
final int questionLength;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:background,
      content: Padding(
      padding:const EdgeInsets.all(60.0),
      child:Column(
        mainAxisSize:MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Result',
          style: TextStyle(color:neutral, fontSize: 22.0),
          ),
          const SizedBox(height: 20.0),
          CircleAvatar(
             child: Text(
              '$result/$questionLength',
              style: TextStyle(fontSize: 30.0),
              ),
             radius: 70.0,
             backgroundColor: result == questionLength /2
              ?Colors.yellow //When the result is half of the question
              :result < questionLength / 2
                ?incorrect  //when the result is lessthen half
                :correct, // when the result is more half

          ),
          const SizedBox(height:20.0),
          Text( result == questionLength /2
              ? 'Almost there' //When the resu lt is half of the question
              :result < questionLength / 2
                ?'Try Again ?'  //when the result is lessthen half
             :'Great!', // when the result is more half(),
             style: const TextStyle(color: neutral),
          ),

          const SizedBox(height: 25.0,),
          GestureDetector(
            onTap: onPressed,
            child:const Text(
              'Start over',
            style: TextStyle(color: Colors.blue, 
            fontSize: 20.0,
            letterSpacing:1.0, 
            ),
            ),

          )
        ],
        ),
      ),
    );
  }
}