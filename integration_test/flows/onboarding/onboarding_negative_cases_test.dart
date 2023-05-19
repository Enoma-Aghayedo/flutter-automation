//@dart=2.11
import 'package:flutter_test/flutter_test.dart';
import '../../shared_screens/calendar_screen_test.dart';
import '../../shared_screens/otp_screen_test.dart';
import '../../shared_screens/shared_elements_test.dart';
import '../../util/tester_extension.dart';
import 'onboarding_test.dart';
import 'test_screens/personal_info_capture_screen_test.dart';
import 'test_screens/phone_number_screen_test.dart';
import 'test_screens/primary_adress_screen_test.dart';

const _kNotRegisteredNumber = '7771234567';
const _kAlreadyRegisteredNumber = '8881234567';

runNegativeOnBoardingTests() {
  group('negative onboarding tests', () {
    testWidgets('Verify if phone number input receives only digits',
        (tester) async {
      await OnboardingTest.allStepsToSelectACountryScreen(tester);
      await PhoneNumberScreenTest.enterPhoneNumber(tester, phoneNumber: 'TEXT');
      await PhoneNumberScreenTest.enterPhoneNumber(tester, phoneNumber: 't');
      await PhoneNumberScreenTest.isPhoneNumberFieldNotAcceptsText(tester);
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle();
      await PhoneNumberScreenTest.isEnterYourPhoneNumberTextVisible();
      await tester.pumpAndSettle();
    });

    testWidgets('Verify if phone number input receives only digits',
        (tester) async {
      await OnboardingTest.allStepsToSelectACountryScreen(tester);
      await PhoneNumberScreenTest.enterPhoneNumber(tester, phoneNumber: 'TEXT');
      await PhoneNumberScreenTest.enterPhoneNumber(tester, phoneNumber: 't');
      await PhoneNumberScreenTest.isPhoneNumberFieldNotAcceptsText(tester);
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle();
      await PhoneNumberScreenTest.isEnterYourPhoneNumberTextVisible();
      await tester.pumpAndSettle();
    });

    testWidgets('Verify if user can use a registered phone number', (
      tester,
    ) async {
      await OnboardingTest.allStepsToSelectACountryScreen(tester);
      await PhoneNumberScreenTest.enterPhoneNumber(
        tester,
        phoneNumber: _kAlreadyRegisteredNumber,
      );
      await SharedElements.tapNextButton(tester);
      await PhoneNumberScreenTest.isNumberHasBeenRegisteredWarningisVisible();
      await tester.pumpAndSettle();
    });

    testWidgets('Verify if user can use an invalid phone number',
        (tester) async {
      await OnboardingTest.allStepsToSelectACountryScreen(tester);
      await PhoneNumberScreenTest.enterPhoneNumber(tester,
          phoneNumber: '111111');
      await SharedElements.tapNextButton(tester);
      // await PhoneNumberScreenTest.isEnterACorrectPhoneLabelVisible();
      await tester.pumpAndSettle();
    });

    testWidgets('Verify if user can use an invalid email', (tester) async {
      await OnboardingTest.allStepsToSelectACountryScreen(tester);
      await PhoneNumberScreenTest.enterPhoneNumber(
        tester,
        phoneNumber: _kNotRegisteredNumber,
      );
      await SharedElements.tapNextButton(tester, shouldPump: false);
      await tester.pumpUntilFound(OtpScreenTest.pinFieldInput);
      await OtpScreenTest.enterOnboardingOtpPassCode(tester, '123456');
      await PrimaryAdressScreenTest.enterEmailAddress(
        tester,
        'rova_automationemail.com',
      );
      await SharedElements.tapNextButton(tester);
      await PrimaryAdressScreenTest.isEnterAValidEmailAdressTextVisible();
    });

    testWidgets('Verify if user can select future DOB', (tester) async {
      await OnboardingTest.allStepsToPersonalInformationScreen(tester);
      await SignUpInfoCaptureScreenTest.tapDateOfBirthInput(tester);
      await PrimaryAdressScreenTest.tapChevronRightIcon(tester);
      await CalendarScreenTest.is2005YearVisible();
      await tester.pumpAndSettle();
    });

    testWidgets('Verify if user can submit empty personal information fields',
        (tester) async {
      await OnboardingTest.allStepsToPersonalInformationScreen(tester);
      await SharedElements.tapNextButton(tester);

      expect(
          SignUpInfoCaptureScreenTest.selectYourNameTitleText, findsOneWidget);
      expect(
          SignUpInfoCaptureScreenTest.enterYourFirstNameText, findsOneWidget);
      expect(SignUpInfoCaptureScreenTest.enterYourLastNameText, findsOneWidget);
      expect(
          SignUpInfoCaptureScreenTest.enterYourDateOfBirthText, findsOneWidget);
    });
  });
}
