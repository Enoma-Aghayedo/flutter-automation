import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/onboarding/email_capture.dart';

class PrimaryAdressScreenTest {
  static final _emailInput = find.byKey(SignUpEmailCaptureScreen.emailInputKey);

  static final _pleaseEnterAVaildEmailAddressText =
      find.text('Please enter a valid email address.');

  static final _chevronRightIcon = find.byIcon(Icons.chevron_right);

  static final _chevronLeftIcon = find.byIcon(Icons.chevron_left);

  static enterEmailAddress(WidgetTester tester, emailAddress) async {
    await tester.enterText(PrimaryAdressScreenTest._emailInput, emailAddress);
    await tester.pumpAndSettle();
  }

  static isEnterAValidEmailAdressTextVisible() async {
    expect(PrimaryAdressScreenTest._pleaseEnterAVaildEmailAddressText,
        findsOneWidget);
  }

  static tapChevronRightIcon(WidgetTester tester) async {
    await tester.tap(PrimaryAdressScreenTest._chevronRightIcon);
    await tester.pumpAndSettle();
  }

  static tapChevronLeftIcon(WidgetTester tester) async {
    await tester.tap(PrimaryAdressScreenTest._chevronLeftIcon);
    await tester.pumpAndSettle();
  }
}
