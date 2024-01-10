  import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
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