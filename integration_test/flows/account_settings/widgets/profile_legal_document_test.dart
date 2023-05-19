import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class ProfileLegalDocumentsScreenTest {
  static final _gbpLegal = find.text('GBP Legal Documents');

  static final _ngnLegal = find.text('Naira Legal Documents');

  static tapGBPDocument(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfileLegalDocumentsScreenTest._gbpLegal);
    await tester.pumpAndSettle();
  }

  static tapNairaDocument(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfileLegalDocumentsScreenTest._ngnLegal);
    await tester.pumpAndSettle();
  }
}
