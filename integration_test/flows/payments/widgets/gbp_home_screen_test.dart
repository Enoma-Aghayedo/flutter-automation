import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class PoundHomeScreenTest {
  static final _gbpAccount = find.text('GBP Account');
  static tapPoundAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PoundHomeScreenTest._gbpAccount);
    await tester.pumpAndSettle();
  }
}
