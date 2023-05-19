import 'package:flutter_test/flutter_test.dart' show WidgetTester, find;
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/auth/passcode_change_personal_info_capture_screen.dart';
// ignore: import_of_legacy_library_into_null_safe

class PasscodeChangePersonalInfoTest {
  static final _firsttNameInput =
      find.byKey(PasscodeChangePersonalInfoCaptureScreen.firstNameInputKey);

  static final _lastNameInput =
      find.byKey(PasscodeChangePersonalInfoCaptureScreen.lastNameInputKey);

  static final _enterButton = find.text('Enter');

  static final enterYourFirstNameText = find.text('First Name');

  static final enterYourLastNameText = find.text('Last Name');

  static enterFirstName(WidgetTester tester,
      {required String firstName}) async {
    await tester.enterText(
        PasscodeChangePersonalInfoTest._firsttNameInput, firstName);
    await tester.pumpAndSettle();
  }

  static enterLastName(WidgetTester tester, {required String lastName}) async {
    await tester.enterText(
        PasscodeChangePersonalInfoTest._lastNameInput, lastName);
    await tester.pumpAndSettle();
  }

  static tapEnterButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PasscodeChangePersonalInfoTest._enterButton);
    await tester.pumpAndSettle();
  }
}
