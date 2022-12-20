// ignore_for_file: prefer_final_fields, unnecessary_this
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/Questions.dart';

class QuestionController extends GetxController {
  PageController? _pageController;
  Future<PageController?> get pageController async => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options']),
      )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswerd = false;
  bool get isAnswerd => this._isAnswerd;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  void checkAns(Question question, int selectedIndex) {
    _isAnswerd = true;
    _selectedAns = selectedIndex;

    Future.delayed(const Duration(seconds: 3), () {
      _isAnswerd = false;
      _pageController!.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);
    });
  }
  void updateTheQnNum(int index){
    _questionNumber.value = index +1;
  }
}
