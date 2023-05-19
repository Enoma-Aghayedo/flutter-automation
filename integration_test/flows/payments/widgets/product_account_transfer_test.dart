import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class ProductAccountScreenTest {
  static final _productAccount = find.text('NGN');

  static tapProductAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProductAccountScreenTest._productAccount);
    await tester.pumpAndSettle();
  }
}
