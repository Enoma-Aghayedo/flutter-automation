import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/breather_verification.dart';

class SignUpVerificationBreatherScreenTest {
  static final _okayButton =
      find.byKey(SignUpVerificationBreatherScreen.okayButtonKey);

  static tapOkayButton(WidgetTester tester) async {
    await tester.tap(SignUpVerificationBreatherScreenTest._okayButton);
    await tester.pumpAndSettle();
  }
}
