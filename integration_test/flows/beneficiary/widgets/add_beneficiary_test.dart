// ignore_for_file: avoid_relative_lib_imports

import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/fund_transfer/transfer_beneficiaries_screen.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/fund_transfer/transfer_beneficiaries_screen.dart';

class TransferBeneficiariesPageTest {
  static final addBeneficiaryIcon =
      find.byKey(TransferBeneficiariesPage.addBeneficiaryIconKey);

  static final _beneficiary08023212 = find.text('Aby Adersson');

  static final _searchBeneficiary =
      find.byKey(TransferBeneficiariesPage.searchKey);

  static tapAddBeneficiary(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransferBeneficiariesPageTest.addBeneficiaryIcon);
    await tester.pumpAndSettle();
  }

  static tapBeneficiary08023212(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransferBeneficiariesPageTest._beneficiary08023212);
    await tester.pumpAndSettle();
  }

  static enterSearchBeneficiary(WidgetTester tester,
      {required String searchBen}) async {
    await tester.enterText(
        TransferBeneficiariesPageTest._searchBeneficiary, searchBen);
    await tester.pumpAndSettle();
  }
}
