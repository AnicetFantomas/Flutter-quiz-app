  import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
// import 'package:quiz_app/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers, required this.onRestartQuiz});

  final List<String> choosenAnswers;
  final VoidCallback onRestartQuiz;

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
      final summaryData = getSummaryData();
      final numTotalQuestions = questions.length;
      final numCorrectQuestions = summaryData.where((data) {
        return data['user_answer'] == data['correct_answer'];
      }).length;

      return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            const  SizedBox(height: 30),
              QuestionSummary(summaryData),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: onRestartQuiz,
              )
            ],
          ),
        )
      );
    }
  }