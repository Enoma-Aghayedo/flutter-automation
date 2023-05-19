import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/general/search_sheet.dart';
import 'package:roava/screens/onboarding/personal_info_capture.dart';
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

  static final _postCodeInput =
      find.byKey(ContactDetailsScreen.postCodeInputKey);

  static final _postCodeSearchInput =
      find.byKey(SearchBottomSheet.postCodeSearchInputKey);

  static final _enterAddressManuallyButton =
      find.byKey(SearchBottomSheet.enterAddressManuallyButtonKey);

  static final _addressInput = find.byKey(ContactDetailsScreen.addressInputKey);

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
    required String postCode,
    required String address,
    required String city,
  }) async {
    await _tapPostCodeInput(tester);
    await _tapPostCodeSearchInput(tester);
    await _enterTextPostCodeSearchInput(
      tester,
      '1BA',
    );
    await _tapEnterAddressManuallyButton(tester);
    await _enterAddress(tester, 'Address');
    await _enterCity(tester, 'City');
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

  static dragUntilVisibleDateOfBirth(WidgetTester tester) async {
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

  static _tapPostCodeInput(WidgetTester tester) async {
    await tester.tap(
      SignUpInfoCaptureScreenTest._postCodeInput,
      warnIfMissed: false,
    );
    await tester.pumpAndSettle();
  }

  static _tapPostCodeSearchInput(WidgetTester tester) async {
    await tester.tap(SignUpInfoCaptureScreenTest._postCodeSearchInput);
    await tester.pumpAndSettle();
  }

  static _enterTextPostCodeSearchInput(WidgetTester tester, text) async {
    await tester.enterText(
        SignUpInfoCaptureScreenTest._postCodeSearchInput, text);
    await tester.pumpAndSettle();
  }

  static _tapEnterAddressManuallyButton(WidgetTester tester) async {
    await tester.tap(SignUpInfoCaptureScreenTest._enterAddressManuallyButton);
    await tester.pumpAndSettle();
  }

  static _enterAddress(WidgetTester tester, address) async {
    await tester.enterText(SignUpInfoCaptureScreenTest._addressInput, address);
    await tester.pumpAndSettle();
  }

  static _enterCity(WidgetTester tester, city) async {
    await tester.enterText(SignUpInfoCaptureScreenTest._cityInput, city);
    await tester.pumpAndSettle();
  }
}
