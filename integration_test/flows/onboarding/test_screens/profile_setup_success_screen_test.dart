import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/profile_setup_success.dart';

class ProfileSetupSuccessScreenTest {
  static final _profileCompleteContinueButton =
      find.byKey(ProfileSetUpSuccessScreen.profileCompleteContinueButtonKey);

  static tapProfileCompleteContinueButton(WidgetTester tester) async {
    await tester
        .tap(ProfileSetupSuccessScreenTest._profileCompleteContinueButton);
    await tester.pumpAndSettle();
  }
}
