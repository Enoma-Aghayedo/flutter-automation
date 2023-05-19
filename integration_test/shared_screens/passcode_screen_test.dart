import 'package:flutter_test/flutter_test.dart';

class PassCodeScreenTest {
  static passCodeValueButtonText(String value) => find.text(value);

  static enterOnboardingPassCode(WidgetTester tester) async {
    var num = 1;

    for (var i = num; i < 7; i++) {
      await tester.tap(PassCodeScreenTest.passCodeValueButtonText('1'));
      await tester.pump(Duration(milliseconds: 300));
    }
  }

  static enterLoginPassCode(WidgetTester tester) async {
    final passCode = ['6', '5', '4', '3', '2', '1'];

    for (final number in passCode) {
      await tester.tap(PassCodeScreenTest.passCodeValueButtonText(number));
      await tester.pump(Duration(milliseconds: 300));
    }
    await tester.pumpAndSettle();
  }
}
