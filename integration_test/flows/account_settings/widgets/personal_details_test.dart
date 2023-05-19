import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class PersonalDetailsScreenTest {
  static final _personalDetails = find.text('Personal details');

  static final _helpSupport = find.text('Help & Support');

  static final _legalDocument = find.text('Legal documents');

  static tapPersonalDetails(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PersonalDetailsScreenTest._personalDetails);
    await tester.pumpAndSettle();
  }

  static tapHelpAndSupport(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PersonalDetailsScreenTest._helpSupport);
    await tester.pumpAndSettle();
  }

  static tapLegalDocument(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PersonalDetailsScreenTest._legalDocument);
    await tester.pumpAndSettle();
  }
}
