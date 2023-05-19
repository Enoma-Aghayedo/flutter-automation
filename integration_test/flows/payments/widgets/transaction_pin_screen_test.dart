import 'package:flutter_test/flutter_test.dart';
import '../../../shared_screens/passcode_screen_test.dart';

class TransactionPinScreenTest {
  static enterTransactionPin(WidgetTester tester) async {
    final passCode = ['4', '3', '2', '1'];

    for (final number in passCode) {
      await tester.tap(PassCodeScreenTest.passCodeValueButtonText(number));
      await tester.pump(Duration(milliseconds: 300));
    }

    await tester.pumpAndSettle();
  }
}
