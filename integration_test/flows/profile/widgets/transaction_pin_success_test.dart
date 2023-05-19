import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class TransactionPinSuccessScreenTest {
  static final _doneButton = find.text('Continue');

  static tapContinueButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransactionPinSuccessScreenTest._doneButton);
    await tester.pumpAndSettle();
  }
}
