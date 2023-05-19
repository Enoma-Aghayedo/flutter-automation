import 'package:flutter_test/flutter_test.dart';
import '../../../shared_screens/passcode_screen_test.dart';

class TransactionInvalidPinScreenTest {
  static enterNewTransactionPin(WidgetTester tester) async {
    final passCode = ['1', '2', '3', '4'];

    for (final number in passCode) {
      await tester.tap(PassCodeScreenTest.passCodeValueButtonText(number));
      await tester.pump(Duration(milliseconds: 300));
    }

    await tester.pumpAndSettle();
  }
}
