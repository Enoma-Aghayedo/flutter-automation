import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../onboarding/test_screens/welcome_screen_test.dart';
import 'widgets/login_enter_email_screen_test.dart';

const _kLoginEmail = 'wise3333@yopmail.com';

runNegativeLoginTests() {
  group('negative login tests', () {
    testWidgets('Verify that user cannot login with invalid credentials',
        (tester) async => await LoginTest.login(tester));
  });
}

abstract class LoginTest {
  static login(WidgetTester tester) async {
    await tester.binding.setSurfaceSize(Size(800, 1200));
    await tester.pumpAndSettle();
    await WelcomeScreenTest.tapLogin(tester);
    await LoginEnterEmailScreenTest.login(
      tester,
      email: _kLoginEmail,
    );
  }
}

abstract class LoginAfterOnboarding {
  static loginAfterOnboarding(WidgetTester tester) async {
    await tester.binding.setSurfaceSize(Size(800, 1200));
    await tester.pumpAndSettle();
    await WelcomeScreenTest.tapLogin(tester);
    await LoginEnterEmailScreenTest.login(
      tester,
      email: _kLoginEmail,
    );
  }
}
