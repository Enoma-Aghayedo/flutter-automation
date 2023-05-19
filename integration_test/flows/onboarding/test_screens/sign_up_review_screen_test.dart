import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/signup_review_screen.dart';

class SignUpReviewScreenTest {
  static final _looksGoodContinueButton =
      find.byKey(SignUpReviewScreen.looksGoodContinueButtonKey);

  static tapLooksGoodContinueButton(WidgetTester tester) async {
    await tester.tap(SignUpReviewScreenTest._looksGoodContinueButton);
    await tester.pumpAndSettle();
  }
}
