import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/fund_transfer/transfer_new_beneficiary_account_screen.dart';

class TransferNewBeneficiaryAccountScreenTest {
  static final _sortCodeInput =
      find.byKey(TransferNewBeneficiaryAccountScreen.sortCodeInputKey);

  static final _accountNumberInput =
      find.byKey(TransferNewBeneficiaryAccountScreen.accountNumberInputKey);

  static final _recipientNameInput =
      find.byKey(TransferNewBeneficiaryAccountScreen.recipientNameInputKey);

  static final _addBeneficiaryButton =
      find.byKey(TransferNewBeneficiaryAccountScreen.addBeneficiaryButtonKey);

  static final sortCodeText = find.text('Sort Code');

  static final accountNumberText = find.text('Account Number');

  static final nameText = find.text('Recipient Name');

  static enterSortCode(WidgetTester tester, {required String sortCode}) async {
    await tester.enterText(
        TransferNewBeneficiaryAccountScreenTest._sortCodeInput, sortCode);
    await tester.pumpAndSettle();
  }

  static enterAccountNumber(WidgetTester tester,
      {required String accountNumber}) async {
    await tester.enterText(
        TransferNewBeneficiaryAccountScreenTest._accountNumberInput,
        accountNumber);
    await tester.pumpAndSettle();
  }

  static enterRecipientName(WidgetTester tester,
      {required String recipientName}) async {
    await tester.enterText(
        TransferNewBeneficiaryAccountScreenTest._recipientNameInput,
        recipientName);
    await tester.pumpAndSettle();
  }

  static tapAddBeneficiaryButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester
        .tap(TransferNewBeneficiaryAccountScreenTest._addBeneficiaryButton);
    await tester.pumpAndSettle();
  }
}
