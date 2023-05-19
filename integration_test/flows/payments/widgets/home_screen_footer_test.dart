import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class HomeScreenFooterTest {
  static final _accountFooter = find.text('Accounts');

  static final _paymentFooter = find.text('Payments');

  static tapAccountFooter(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenFooterTest._accountFooter);
    await tester.pumpAndSettle();
  }

  static tapPaymentFooter(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenFooterTest._paymentFooter);
    await tester.pumpAndSettle();
  }
}
