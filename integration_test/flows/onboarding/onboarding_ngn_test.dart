//@dart=2.11
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../../shared_screens/biometric_screen_test.dart';
import '../../shared_screens/calendar_screen_test.dart';
import '../../shared_screens/otp_screen_test.dart';
import '../../shared_screens/passcode_screen_test.dart';
import '../../shared_screens/shared_elements_test.dart';
import '../../util/tester_extension.dart';
import 'test_screens/account_opening_checklist_test.dart';
import 'test_screens/country_screen2_test.dart';
import 'test_screens/lets_get_started_screen_test.dart';
import 'test_screens/notifications_permission_screen_test.dart';
import 'test_screens/personal_info_capture_screen2_test.dart';
import 'test_screens/phone_number_screen_test.dart';
import 'test_screens/primary_adress_screen_test.dart';
import 'test_screens/reasons_screen_test.dart';
import 'test_screens/request_code_invitation_test.dart';
import 'test_screens/sign_up_review_screen_test.dart';
import 'test_screens/terms_and_conditions_screen_test.dart';
import 'test_screens/validate_invitation_code.dart';
import 'test_screens/welcome_screen_test.dart';

const _kCode = 'ROV007';

void runOnBoardingNGNTests() {
  group('onboardingNGN test', () {
    testWidgets('Verify that user can onboard NGN', (tester) async {
      await OnboardingNGNTest.allStepsToPersonalInformationScreen(tester);
      // QR-17 1/2 Personal information screen
      await SignUpInfoCaptureScreenTest.dragUntilVisibleDOB(tester);
      await SignUpInfoCaptureScreenTest.tapDateOfBirthInput(tester);
      await CalendarScreenTest.tapSwitchYearButton(tester);
      await CalendarScreenTest.tapPersonalInfoYear(tester, '1990');
      await CalendarScreenTest.tapPersonalInfoDay(tester, '11');
      await CalendarScreenTest.tapDoneChooseYearButton(tester);
      await CalendarScreenTest.tapDoneChooseDateButton(tester);
      await SignUpInfoCaptureScreenTest.enterFirstAndLastName(
        tester,
        firstName: 'Akeem',
        lastName: 'Ojo',
      );
      await SharedElements.tapNextButton(tester);
      // QR-18 2/2 Personal information screen
      // ignore: missing_required_param
      await SignUpInfoCaptureScreenTest.enterAddress(
        tester,
        state: 'Lagos',
        houseNumber: '10',
        streetName: 'Downing Street',
        city: 'VI',
      );
      await SharedElements.tapNextButton(tester);
      // QR-19 Profile info confirmation screen
      await SignUpReviewScreenTest.tapLooksGoodContinueButton(tester);
      // QR-33 Profile setup success screen
      await AccountOpeningChecklistTest.tapProceedButtonText(tester);
    });
  });
}

abstract class OnboardingNGNTest {
  static allStepsToSelectACountryScreen(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await WelcomeScreenTest.createAccount(tester);
    //QR-3 Notifications screen
    await RequestCodeInvitation.tapRequestButtonText(tester);
    // QR-4 Request Invitation Code screen
    await ValidateInvitationCodeScreenTest.invitation(
      tester,
      code: _kCode,
    );
    await tester.pumpAndSettle();
    // QR-5 Validate Code screen
    await NotificationScreenTest.tapAllowNotificationsButtonScreen(tester);
    // QR-4 Let's get started screen
    await LetsGetStartedScreenTest.dragUntilVisibleLetsProceedButton(tester);
    // QR-6 Let's get started screen
    await LetsGetStartedScreenTest.tapLetsProceedButton(tester);
    // QR-5 Sign up adress capture screen
    await CountryScreen2Test.tapCountryInput(tester);
    // QR-5 Country list selection screen
    await SharedElements.enterTextCountrySearchInput(tester, 'Nigeria');
    await CountryScreen2Test.tapCountryKeyNigeria(tester);
    await SharedElements.tapNextButton(tester);
  }

  static allStepsToPersonalInformationScreen(WidgetTester tester) async {
    await tester.binding.setSurfaceSize(Size(800, 1200));
    await tester.pumpAndSettle();
    await allStepsToSelectACountryScreen(tester);
    // QR-6 Phone verification screen
    await PhoneNumberScreenTest.enterPhoneNumber(
      tester,
      phoneNumber: '8011122244',
    );
    await SharedElements.tapNextButton(tester, shouldPump: false);
    await tester.pumpUntilFound(OtpScreenTest.pinFieldInput);

    // QR-7 OTP Code verification screen
    await OtpScreenTest.enterOnboardingOtpPassCode(tester, '654321');
    // QR-9 Primary Email  screen
    await PrimaryAdressScreenTest.enterEmailAddress(
      tester,
      'roavang_automation@yopmail.com',
    );
    await SharedElements.tapNextButton(tester, shouldPump: false);
    await tester.pumpUntilFound(OtpScreenTest.pinFieldInput);

    // QR-10 Email verifcation screen
    await OtpScreenTest.enterOnboardingOtpPassCode(tester, '654321');
    // QR-12 6 digit passcode screen
    await PassCodeScreenTest.enterOnboardingPassCode(tester);
    // QR-13 Confirm 6 digit passcode screen
    await PassCodeScreenTest.enterOnboardingPassCode(tester);
    // QR-14 Biometric screen
    await BiometricScreenTest.tapBiometricSkipButtonIfVisible(tester);
    // QR-15 Terms and conditions screen
    await TermsAndConditionsScreenTest.acceptTermsAndConditions(tester);
    await tester.pumpAndSettle(Duration(seconds: 3));
    await AccountOpeningChecklistTest.tapProceedButtonText(tester);
    await tester.pumpAndSettle(Duration(seconds: 3));
    // QR-16 Reasons screen
    await ReasonsScreenTest.tapReasonButtonText(tester);
    await SharedElements.tapNextButton(tester);
  }
}
