import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/onboarding/phone_number_capture_screen.dart';

class PhoneNumberScreenTest {
  static final _phoneInput =
      find.byKey(PhoneNumberCaptureArgument.phoneInputKey);
  static final _enterYourPhoneNumberText = find.text('Enter your phone number');
  static final _numberHasBeenRegisteredText = find.text(
      'This phone number has been registered, please proceed to login or register with a new phone number.');
  static final _enterCorrectPhoneText =
      find.text('Enter a correct phone number');

  static isPhoneNumberFieldNotAcceptsText(WidgetTester tester) async {
    await tester.pumpAndSettle();
    expect(find.text('TEXT'), findsNothing);
    expect(find.text('T'), findsNothing);
  }

  static isEnterYourPhoneNumberTextVisible() async {
    expect(PhoneNumberScreenTest._enterYourPhoneNumberText, findsOneWidget);
  }

  static isNumberHasBeenRegisteredWarningisVisible() async {
    expect(PhoneNumberScreenTest._numberHasBeenRegisteredText, findsOneWidget);
  }

  static isEnterACorrectPhoneLabelVisible() async {
    expect(PhoneNumberScreenTest._enterCorrectPhoneText, findsOneWidget);
  }

  static enterPhoneNumber(
    WidgetTester tester, {
    required String phoneNumber,
  }) async {
    await tester.enterText(PhoneNumberScreenTest._phoneInput, phoneNumber);
    await tester.pumpAndSettle();
  }
}
