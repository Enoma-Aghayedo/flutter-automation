import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/auth/device_management_screen.dart';
import 'package:roava/widgets/roava_country_code_dropdown.dart';

class DeviceManagementScreenTest {
  static final _loginPassCodeInput =
      find.byKey(DeviceManagementScreen.roavaPassCodeInputKey);

  static final _loginPhoneNumberInput =
      find.byKey(DeviceManagementScreen.loginPhoneNumberInputKey);

  static final _loginCountryPicker =
      find.byKey(RoavaCountryCodeDropdown.countryPickerButtonKey);

  static countryCode(code) => find.text(code);

  static final _newDeviceContinueButton = find.text('Continue');

  static final isNewDeviceYesButtonText = find.text('Yes');

  static final _loginDateOfBirthInput =
      find.byKey(DeviceManagementScreen.loginDateOfBirthInputKey);

  static tapCountryCode(WidgetTester tester, code) async {
    await tester.tap(DeviceManagementScreenTest.countryCode(code));
    await tester.pumpAndSettle();
  }

  static tapNewDeviceContinueButton(WidgetTester tester) async {
    await tester.tap(DeviceManagementScreenTest._newDeviceContinueButton);
    await tester.pumpAndSettle();
  }

  static tapIsNewDeviceYesButton(WidgetTester tester) async {
    await tester.tap(DeviceManagementScreenTest.isNewDeviceYesButtonText);
    await tester.pumpAndSettle();
  }

  static enterTextLoginPassCodeInput(WidgetTester tester, code) async {
    await tester.enterText(
      DeviceManagementScreenTest._loginPassCodeInput,
      code,
    );
    await tester.pumpAndSettle();
  }

  static enterTextLoginPhoneNumberInput(
      WidgetTester tester, phoneNumber) async {
    await tester.enterText(
      DeviceManagementScreenTest._loginPhoneNumberInput,
      phoneNumber,
    );
    await tester.pumpAndSettle();
  }

  static tapLoginCountryPicker(WidgetTester tester) async {
    await tester.tap(
      DeviceManagementScreenTest._loginCountryPicker,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle();
  }

  static tapLoginDateBirthInput(WidgetTester tester) async {
    await tester.tap(
      DeviceManagementScreenTest._loginDateOfBirthInput,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle();
  }
}
