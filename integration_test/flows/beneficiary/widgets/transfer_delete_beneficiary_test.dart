// ignore_for_file: avoid_relative_lib_imports

import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/fund_transfer/transfer_beneficiaries_screen.dart';
import 'package:roava/screens/fund_transfer/transfer_manage_beneficiary_accounts_screen.dart';
// ignore: import_of_legacy_library_into_null_safe

class TransferManageBeneficiaryAccountsScreenTest {
  static final _deleteIcon = find
      .byKey(TransferManageBeneficiaryAccountsScreen.deleteAccountButtonKey);

  static final _deleteButton = find.text('Yes, Delete');

  static tapDeleteIcon(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransferManageBeneficiaryAccountsScreenTest._deleteIcon);
    await tester.pumpAndSettle();
  }

  static tapDeleteBeneficiary(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransferManageBeneficiaryAccountsScreenTest._deleteButton);
    await tester.pumpAndSettle();
  }
}
