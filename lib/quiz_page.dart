import 'package:depression_prediction_app/widgets/next_button.dart';
import 'package:depression_prediction_app/widgets/option_card.dart';
import 'package:depression_prediction_app/widgets/result_box.dart';
import 'package:flutter/material.dart';
import 'models/Questions.dart';
import 'widgets/question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // ignore: prefer_final_fields
  // List<Question> _questions = sample_data
  //     .map(
  //       (question) => Question(
  //         id: question['id'],
  //         title: question['question'],
  //         options: {},
  //       ),
  //     )
  //     .toList();

  // ignore: prefer_final_fields
  List<Question> _questions = [
    Question(
      id: 1,
      title: "I couldn't seem to experience any positive feeling at all",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 2,
      title: "I just couldn't seem to get going",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 3,
      title: "I felt that I had nothing to look forward to",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 4,
      title: "I felt sad and depressed",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 5,
      title: "I felt that I had lost interest in just about everything",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 6,
      title: "I felt I wasn't worth much as a person",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 7,
      title: "I felt that life wasn't worthwhile",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 8,
      title: "I couldn't seem to get any enjoyment out of the things I did",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 9,
      title: "I felt down-hearted and blue",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 10,
      title: "I was unable to become enthusiastic about anything",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 11,
      title: "I felt I was pretty worthless",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 12,
      title: "I could see nothing in the future to be hopeful about",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 13,
      title: "I felt that life was meaningless",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 14,
      title: "I found it difficult to work up the initiative to do things",
      options: {0: 'Never', 1: 'Sometimes', 2: 'Often', 3: 'Almost always'},
    ),
    Question(
      id: 15,
      title: "How about your education",
      options: {0:'No school',
      1:'Less than high school',
      2:'High school',
      3:'University degree',
      4:'Graduate degree'},
    ),
    Question(
      id: 16,
      title: "What is your gender",
      options: {0:'Male', 1:'Female', 2:'Other'},
    ),
    Question(
      id: 17,
      title: "Are you married?",
      options: {0:'Never married', 1:'Currently married', 2:'Previously married'},
    ),
    Question(
      id: 18,
      title: "How about your age",
      options: { 0:'Primary Children',
      1:'Secondary Children',
      2:'Adults',
      3:'Elder Adults',
      4:'Older People'},
    ),
  ];

  final List<int> _responses = [];

  int selectedIndex = -1;
  int questionIndex = 0;
  String result = 'null';
  bool isPressed = false;

  void nextQuestion() {
    if (questionIndex == _questions.length - 1) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => ResultBox(
          result: result,
          onPressed: startOver,
        ),
      );
    } else {
      //   if (isPressed) {
      setState(() {
        questionIndex++;
        isPressed = false;
        selectedIndex = -1;
      });
      //   } else {
      //     // ScaffoldMessenger.of(context).showSnackBar(
      //     //   const SnackBar(
      //     //     content: Text('Please select any option'),
      //     //     behavior: SnackBarBehavior.floating,
      //     //     margin: EdgeInsets.symmetric(vertical: 20.0),
      //     //   ),
      //     // );
      //   }
    }
  }

  void startOver() {
    setState(() {
      questionIndex = 0;
      selectedIndex = -1;
      result = 'null';
      isPressed = false;
      _responses.clear();
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
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
                    _responses.add(selectedIndex);
                    print(_responses);
                  });
                },
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
          nextBtn: "Next",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
