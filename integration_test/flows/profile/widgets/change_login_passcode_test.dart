import 'package:flutter_test/flutter_test.dart' show WidgetTester, find;
// ignore: import_of_legacy_library_into_null_safe

class ProfilePrivacyAndSecurityScreenTest {
  static final _changeloginKey =
      find.text('Change Login Passcode', findRichText: true);

  static final _changeTranxKey =
      find.text('Change Transaction PIN', findRichText: true);

  //static final _changeTranxKey = find.text('Change Transaction PIN');

  static tapChangeLoginPasscode(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfilePrivacyAndSecurityScreenTest._changeloginKey);
    await tester.pumpAndSettle();
  }

  static tapChangeTransactionPin(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfilePrivacyAndSecurityScreenTest._changeTranxKey);
    await tester.pumpAndSettle();
  }
}
