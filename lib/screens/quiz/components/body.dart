import 'dart:convert';

import 'package:depression_prediction_app/widgets/next_button.dart';
import 'package:depression_prediction_app/widgets/option_card.dart';
import 'package:depression_prediction_app/widgets/result_box.dart';
import 'package:flutter/material.dart';
import '../../../models/Questions.dart';
import '../../../widgets/question_widget.dart';
import 'package:http/http.dart' as http;

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: prefer_final_fields
  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          title: question['question'],
          options: question['options'],
        ),
      )
      .toList();

  final List<int> answers = [];

  int selectedIndex = -1;
  int questionIndex = 0;
  String result = 'null';
  bool isPressed = false;
  bool isLastQuestion = false;

  // ScaffoldMessenger.of(context).showSnackBar(
  //   const SnackBar(
  //     content: Text('Please select any option'),
  //     behavior: SnackBarBehavior.floating,
  //     margin: EdgeInsets.symmetric(vertical: 20.0),
  //   ),
  // );

  void nextQuestion() async {
    if (isLastQuestion) {
      final url =
          Uri.parse("https://depression-condition-prediction.up.railway.app/");
      final response = await http.post(url,
          body: json.encode(answers),
          headers: {'Content-Type': "application/json; charset=utf-8"});
      // print('StatusCode: ${response.statusCode}');
      // print('Return Date: ${response.body}');

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        result = jsonResponse;
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
            condition: result,
            onPressed: startOver,
          ),
        );
        setState(() {
          result = result;
        });
      } else {
        // print('Request faild with status: ${response.statusCode}');
      }
    } else {
      setState(() {
        questionIndex++;
        isPressed = false;
        selectedIndex = -1;
      });
    }
  }

  void startOver() {
    setState(() {
      questionIndex = 0;
      selectedIndex = -1;
      result = 'null';
      isPressed = false;
      answers.clear();
      isLastQuestion = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == _questions.length - 1) {
      isLastQuestion = true;
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 59, 80),
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        child: Column(
          children: [
            QuestionWidget(
              indexAction: questionIndex,
              question: _questions[questionIndex].title,
              totalQuestions: _questions.length,
            ),
            const Divider(color: Colors.white),
            const SizedBox(height: 25.0),
            for (int i = 0; i < _questions[questionIndex].options.length; i++)
              OptionCard(
                selectIndex:
                    // ignore: unrelated_type_equality_checks
                    _questions[questionIndex].options.keys.toList()[i] ==
                        selectedIndex,
                option: _questions[questionIndex].options.values.toList()[i],
                onTap: () {
                  setState(() {
                    selectedIndex =
                        _questions[questionIndex].options.keys.toList()[i];
                    answers.add(selectedIndex);
                  });
                },
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          onPressed: nextQuestion,
          nextBtn: isLastQuestion ? "Submit" : "Next",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
