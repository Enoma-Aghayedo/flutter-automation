import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/onboarding/personal_info_capture.dart';
// import 'package:roava/screens/general/search_sheet.dart';
import 'package:roava/screens/onboarding/signup_contact_details_screen.dart';

class SignUpInfoCaptureScreenTest {
  static final _firstNameInput =
      find.byKey(SignUpPersonalInfoScreen.firstNameInputKey);
  static final _titleInput = find.byKey(SignUpPersonalInfoScreen.titleInputKey);

  static final _title = find.text('Mr');

  static final _lastNameInput =
      find.byKey(SignUpPersonalInfoScreen.lastNameInputKey);

  static final _dateOfBirthInput =
      find.byKey(SignUpPersonalInfoScreen.dateOfBirthInputKey);

  static final _stateInput = find.byKey(ContactDetailsScreen.stateInputkey);

  static final _state = find.text('Abia');

  static final _houseNumberInput =
      find.byKey(ContactDetailsScreen.houseNumberInputkey);

  static final _streetNameInput =
      find.byKey(ContactDetailsScreen.streetNameInputkey);

  static final _cityInput = find.byKey(ContactDetailsScreen.cityInputKey);

  static final selectYourNameTitleText = find.text('Select your name title');

  static final enterYourFirstNameText = find.text('Enter your first name');

  static final enterYourLastNameText = find.text('Enter your last name');

  static final enterYourDateOfBirthText = find.text('Enter your date of birth');

  static enterFirstAndLastName(
    WidgetTester tester, {
    required String firstName,
    required String lastName,
  }) async {
    await _tapTitleInput(tester);
    await _tapTitle(tester);
    await _enterFirstName(tester, firstName);
    await _enterLastName(tester, lastName);
  }

  static enterAddress(
    WidgetTester tester, {
    required String state,
    required String houseNumber,
    required String streetName,
    required String city,
  }) async {
    await _tapStateInput(tester);
    await _tapState(tester);
    await _enterHouseNumber(tester, '10');
    await _enterStreetName(tester, 'Downing Street');
    await _enterCity(tester, 'Aba');
  }

  static _enterFirstName(WidgetTester tester, firstName) async {
    await tester.enterText(
        SignUpInfoCaptureScreenTest._firstNameInput, firstName);
    await tester.pumpAndSettle();
  }

  static _tapTitleInput(WidgetTester tester) async {
    await tester.tap(SignUpInfoCaptureScreenTest._titleInput);
    await tester.pumpAndSettle();
  }

  static _tapTitle(WidgetTester tester) async {
    await tester.tap(SignUpInfoCaptureScreenTest._title);
    await tester.pumpAndSettle();
  }

  static _enterLastName(WidgetTester tester, lastName) async {
    await tester.enterText(
        SignUpInfoCaptureScreenTest._lastNameInput, lastName);
    await tester.pumpAndSettle();
  }

  static dragUntilVisibleDOB(WidgetTester tester) async {
    await tester.dragUntilVisible(
      SignUpInfoCaptureScreenTest._dateOfBirthInput,
      SignUpInfoCaptureScreenTest._dateOfBirthInput,
      Offset(0, -50),
    );
  }

  static tapDateOfBirthInput(WidgetTester tester) async {
    await tester.tap(
      SignUpInfoCaptureScreenTest._dateOfBirthInput,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle();
  }

  static _tapStateInput(WidgetTester tester) async {
    await tester.tap(
      SignUpInfoCaptureScreenTest._stateInput,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle(Duration(seconds: 3));
  }

  static _tapState(WidgetTester tester) async {
    await tester.tap(
      SignUpInfoCaptureScreenTest._state,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle();
  }

  static _enterHouseNumber(WidgetTester tester, text) async {
    await tester.enterText(SignUpInfoCaptureScreenTest._houseNumberInput, text);
    await tester.pumpAndSettle();
  }

  static _enterStreetName(WidgetTester tester, address) async {
    await tester.enterText(
        SignUpInfoCaptureScreenTest._streetNameInput, address);
    await tester.pumpAndSettle();
  }

  static _enterCity(WidgetTester tester, city) async {
    await tester.enterText(SignUpInfoCaptureScreenTest._cityInput, city);
    await tester.pumpAndSettle();
  }
}
