import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class SelectPaymentTypeScreenTest {
  static final _paymentType = find.text('Domestic bank transfer');

  static tapPaymentType(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(SelectPaymentTypeScreenTest._paymentType);
    await tester.pumpAndSettle();
  }
}
