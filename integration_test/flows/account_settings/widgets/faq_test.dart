import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class HelpAndSupportScreenTest {
  static final _faq = find.text('FAQs');

  static tapFAQ(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HelpAndSupportScreenTest._faq);
    await tester.pumpAndSettle();
  }
}
