// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(' Continue', (tester) async {
    // await tester.pumpWidget(WelcomeScreen());
    expect(find.text(' Continue'), findsOneWidget);
    // await expectLater(
    //     find.byType(WelcomeScreen), matchesGoldenFile('golden/home.png'));
  });
}

// Widget depression_prediction_app() {
//   return depression_prediction_app();
// }
