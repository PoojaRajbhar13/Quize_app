//import the material package
import 'package:flutter/material.dart ';
import 'package:quize_app/models/question_model.dart';
//import 'package:quize_app/models/question_model.dart';
import './screens/home_screen.dart'; //this file we just created
import './models/db_connect.dart';
// run the main mathod

void main() {
  var db = DBconnect();
  // db.addQuestion(
  //   Question(id: '20', title: 'What is 20 x 100 ?', options: {
  //     '100':false,
  //     '200' : true,
  //     '300': false,
  //    '500': false,

      
  //   }));

    db.fetchQuestions();
  //the runApp mathod
  runApp(
    const MyApp(), // we will create this below
  );

}

//create the MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //remove the debug banner
      debugShowCheckedModeBanner:false ,

      //set home page
      home: HomeScreen(), // we will create this in separate file
    );
  }
  
}


