import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class OptionCard extends StatelessWidget {
  const OptionCard({super.key,
  required this.option,
  required this.color});
  final String option;
 
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  color,
      child: ListTile(
        title: Text(
        option,
        textAlign: TextAlign.center, 
        style: TextStyle(
          fontSize:22.0,
          color: color.red != color.green ? neutral : Colors.black,
          //we will decided if the color we are receving here
          //what ratio  of the red and what ratio of green in it
        ),
        ),
      ),
    );

  }
}