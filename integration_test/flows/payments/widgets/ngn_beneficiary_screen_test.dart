import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class NGNBeneficiaryScreenTest {
  static final _beneficiary0077908998 = find.text('AKEEM BABAWALE OJO');
  static final _ngnSourceAccount = find.text('Rova Naira Currency Account');

  static tapBeneficiary0077908998(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(NGNBeneficiaryScreenTest._beneficiary0077908998);
    await tester.pumpAndSettle();
  }

  static tapNGNSourceAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(NGNBeneficiaryScreenTest._ngnSourceAccount);
    await tester.pumpAndSettle();
  }
}
