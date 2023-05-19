import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/onboarding/terms_and_condtions_screen.dart';

class TermsAndConditionsScreenTest {
  static final _termsReadRadioButton =
      find.byKey(TermsAndConditionsScreen.generalTermsRadioButtonKey);

  static final _termsRadioButton =
      find.byKey(TermsAndConditionsScreen.termsReadRadioButtonKey);

  static final _marketingRadioButton =
      find.byKey(TermsAndConditionsScreen.marketingRadioButtonKey);

  static final _privacyPolicyRadioButton =
      find.byKey(TermsAndConditionsScreen.privacyPolicyRadioButtonKey);

  static final _submitButton =
      find.byKey(TermsAndConditionsScreen.submitButtonKey);

  static acceptTermsAndConditions(WidgetTester tester) async {
    await _scrollUntilVisibleSubmitButton(tester);
    await _tapTermsReadRadioButton(tester);
    await _tapTermsRadioButton(tester);
    await _tapPrivacyPolicyRadioButton(tester);
    await _tapMarketingRadioButton(tester);
    await _tapSubmitButton(tester);
  }

  static _tapTermsReadRadioButton(WidgetTester tester) async {
    await tester.tap(TermsAndConditionsScreenTest._termsReadRadioButton);
    await tester.pumpAndSettle(Duration(milliseconds: 300));
  }

  static _tapTermsRadioButton(WidgetTester tester) async {
    await tester.tap(TermsAndConditionsScreenTest._termsRadioButton);
    await tester.pumpAndSettle(Duration(milliseconds: 300));
  }

  static _tapMarketingRadioButton(WidgetTester tester) async {
    await tester.tap(TermsAndConditionsScreenTest._marketingRadioButton);
    await tester.pumpAndSettle(Duration(milliseconds: 300));
  }

  static _tapPrivacyPolicyRadioButton(WidgetTester tester) async {
    await tester.tap(TermsAndConditionsScreenTest._privacyPolicyRadioButton);
    await tester.pumpAndSettle(Duration(milliseconds: 300));
  }

  static _tapSubmitButton(WidgetTester tester) async {
    await tester.tap(TermsAndConditionsScreenTest._submitButton);
    await tester.pumpAndSettle();
  }

  static _scrollUntilVisibleSubmitButton(WidgetTester tester) async {
    await tester.scrollUntilVisible(
        TermsAndConditionsScreenTest._submitButton, 100);
    await tester.pumpAndSettle();
  }
}
