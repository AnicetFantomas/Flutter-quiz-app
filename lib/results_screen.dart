  import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  

    @override
    Widget build(context) {
      return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
             const Text(
                'You answered X out of Y questions correctly!',
              ),
            const  SizedBox(height: 30),
             const Text('List of answers and questions...'),
              const SizedBox(height: 30),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
            ],
          ),
        )
      );
    }
  }