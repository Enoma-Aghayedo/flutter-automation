import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class ProfileLegalDocumentsListScreenTest {
  static final _termsCondition = find.text('General Terms and Conditions');

  static final _accountTerms = find.text('Account Terms');

  static tapGeneralTerms(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfileLegalDocumentsListScreenTest._termsCondition);
    await tester.pumpAndSettle();
  }

  static tapAccountTerms(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfileLegalDocumentsListScreenTest._accountTerms);
    await tester.pumpAndSettle();
  }
}
