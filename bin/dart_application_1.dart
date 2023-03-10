import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';

void main(List<String> arguments) {
  var Questions = [
    Quiz(Question: '3 + 5', Answer: 8.0),
    Quiz(Question: '11 - 6', Answer: 5.0),
    Quiz(Question: '8 / 2', Answer: 4.0),
    Quiz(Question: '3 * 3', Answer: 9.0),
  ];
  for (var Q in Questions) {
    var userAnswer = getAnswer(Q.Question);
    print('Your Answer is $userAnswer');
    if (userAnswer == Q.Answer) {
      print('Correct Answer');
    } else {
      print('Wrong Answer, The Correct Answer Is ${Q.Answer}');
    }
    print('---------------------------');
  }
}

class Quiz {
  String Question;
  double Answer;
  Quiz({
    required this.Question,
    required this.Answer,
  });
}

double getAnswer(String Ques) {
  print('Question//$Ques?');
  var Answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return Answer;
}
