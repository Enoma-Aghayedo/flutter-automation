import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/widgets/roava_pin_field.dart';

import 'passcode_screen_test.dart';

class OtpScreenTest {
  static final pinFieldInput = find.byKey(RoavaPinField.pinFieldKey);

  static enterUatOtpPassCode(WidgetTester tester) async {
    final passCode = ['6', '5', '4', '3', '2', '1'];

    for (final number in passCode) {
      await tester.tap(PassCodeScreenTest.passCodeValueButtonText(number));
      await tester.pump(Duration(milliseconds: 300));
    }
  }

  static enterOnboardingOtpPassCode(WidgetTester tester, code) async {
    await tester.enterText(OtpScreenTest.pinFieldInput, code);
    await tester.pumpAndSettle();
  }
}
