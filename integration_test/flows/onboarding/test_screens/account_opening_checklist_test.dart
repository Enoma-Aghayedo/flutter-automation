import 'package:flutter_test/flutter_test.dart';

class AccountOpeningChecklistTest {
  static final _continueButtonText = find.text('Continue');

  static tapProceedButtonText(WidgetTester tester) async {
    await tester.tap(AccountOpeningChecklistTest._continueButtonText);
    await tester.pumpAndSettle();
  }
}
