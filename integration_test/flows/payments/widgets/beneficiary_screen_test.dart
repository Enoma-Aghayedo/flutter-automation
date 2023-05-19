import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class BeneficiaryScreenTest {
  static final _beneficiary00003901 = find.text('Akeem103 Ojo');

  static final _sourceAccount = find.text('Roava Classic GBP Current Account');

  static tapBeneficiary00003901(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(BeneficiaryScreenTest._beneficiary00003901);
    await tester.pumpAndSettle();
  }

  static tapSourceAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(BeneficiaryScreenTest._sourceAccount);
    await tester.pumpAndSettle();
  }
}
