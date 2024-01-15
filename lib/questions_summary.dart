import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 218, 192, 192),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 208, 158, 158)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 5),
                        Text(data['user_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 127, 122, 122),), textAlign: TextAlign.right),
                        Text(data['correct_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 212, 207, 207)), textAlign: TextAlign.right),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
