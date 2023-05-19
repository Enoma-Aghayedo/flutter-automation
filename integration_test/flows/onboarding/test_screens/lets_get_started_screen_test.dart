import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/lets_get_started_screen.dart';

class LetsGetStartedScreenTest {
  static final _letsProceedButton =
      find.byKey(LetsGetStartedScreen.letsProceedKey);

  static tapLetsProceedButton(WidgetTester tester) async {
    await tester.tap(LetsGetStartedScreenTest._letsProceedButton);
    await tester.pumpAndSettle();
  }

  static dragUntilVisibleLetsProceedButton(WidgetTester tester) async {
    await tester.dragUntilVisible(
      LetsGetStartedScreenTest._letsProceedButton,
      LetsGetStartedScreenTest._letsProceedButton,
      Offset(0, -50),
    );
  }
}
