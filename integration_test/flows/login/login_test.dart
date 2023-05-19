import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../../shared_screens/biometric_screen_test.dart';
import '../../shared_screens/calendar_screen_test.dart';
import '../../shared_screens/otp_screen_test.dart';
import '../../shared_screens/passcode_screen_test.dart';
import '../../shared_screens/shared_elements_test.dart';
import '../../util/tester_extension.dart';
import '../onboarding/test_screens/welcome_screen_test.dart';
import 'widgets/login_device_management_screen_test.dart';
import 'widgets/login_enter_email_screen_test.dart';

const _kLoginPassCode = '654321';
const _kLoginPhoneNumber = '0101010101';
const _kDayDateOfBirth = '10';
const _kLoginEmail = 'wise806@yopmail.com';

runLoginTests() {
  group('login tests', () {
    testWidgets('Verify that user can login',
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
    await PassCodeScreenTest.enterLoginPassCode(tester);
    if (tester.any(DeviceManagementScreenTest.isNewDeviceYesButtonText)) {
      await DeviceManagementScreenTest.tapIsNewDeviceYesButton(tester);
      await DeviceManagementScreenTest.tapLoginDateBirthInput(tester);
      await CalendarScreenTest.tapSwitchYearButton(tester);
      await CalendarScreenTest.dragUntilVisiblePersonalInfoYear1985(tester);
      await CalendarScreenTest.tapPersonalInfoYear1985(tester);
      await CalendarScreenTest.tapDoneChooseYearButton(tester);
      await CalendarScreenTest.selectMonth(tester);
      await CalendarScreenTest.tapPersonalInfoDay(
        tester,
        _kDayDateOfBirth,
      );
      await CalendarScreenTest.tapDoneChooseDateButton(tester);
      await DeviceManagementScreenTest.enterTextLoginPassCodeInput(
        tester,
        _kLoginPassCode,
      );
      await DeviceManagementScreenTest.enterTextLoginPhoneNumberInput(
        tester,
        _kLoginPhoneNumber,
      );
      await SharedElements.tapNextButton(tester, shouldPump: false);
      await tester.pumpUntilFound(OtpScreenTest.pinFieldInput);
      await OtpScreenTest.enterUatOtpPassCode(tester);
      await tester.pumpAndSettle();
      await DeviceManagementScreenTest.tapNewDeviceContinueButton(tester);
      await LoginAfterOnboarding.loginAfterOnboarding(tester);
      // await DeviceManagementScreenTest.isUserLoggedIn();
    } else {
      await BiometricScreenTest.tapBiometricSkipButtonIfVisible(tester);
      // await DeviceManagementScreenTest.isUserLoggedIn();
    }
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

    await PassCodeScreenTest.enterLoginPassCode(tester);
    await BiometricScreenTest.tapBiometricSkipButtonIfVisible(tester);
    await tester.pumpAndSettle(Duration(seconds: 5));
  }
}
