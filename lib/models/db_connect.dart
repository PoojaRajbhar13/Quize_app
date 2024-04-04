import 'package:http/http.dart' as http;
import 'package:quize_app/models/question_model.dart'; // the http package
import 'dart:convert';

class DBconnect{
//let's  first create a function to add a question  to our database.
  //declare the name of the table you want to create and add .json as duffix
  final url = Uri.parse('https://quizeapp-2ed9a-default-rtdb.firebaseio.com/questions.json');
  Future<void> addQuestion(Question question)async{
    http.post(url, 
      body: json.encode({
        'title' : question.title,
        'options': question.options,
    }));
  }

//fetch the data from database
Future<List<Question>> fetchQuestions() async{
   //we get data from just using this. now let's print it to
  //see what we got.
    return http.get(url).then((response){
    // the 'then' method returns a 'response' which is our data
    //to whats inside we have to decode it first
    var data = json.decode(response.body) as Map<String, dynamic>;

    List<Question> newQuestions = [];

    data.forEach((key, value) {
      var newQuestion = Question(
        id: key,
        title: value['title'],
        options: Map.castFrom(value['options']),
      );
      newQuestions.add(newQuestion);
    });
    return newQuestions;
   });
  }
}
