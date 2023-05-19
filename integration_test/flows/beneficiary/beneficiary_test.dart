import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import '../login/login_test.dart';
import '../payments/widgets/accounts_details_screen_test.dart';
import '../payments/widgets/home_screen_test.dart';
import '../payments/widgets/payment_type_test.dart';
import '../payments/widgets/transaction_pin_screen_test.dart';
import '../profile/widgets/transaction_pin_success_test.dart';
import 'widgets/add_beneficiary_test.dart';
import 'widgets/transfer_beneficiary_test.dart';
import 'widgets/transfer_delete_beneficiary_test.dart';
import 'widgets/new_beneficiary_test.dart';

const _kSortCode = '001122';
const _kAccountNumber = '08023212';
const _kRecipientName = 'Aby Adersson';
const _kSearchWord = 'Akeem103';

runBeneficiaryTest() {
  group('beneficiary', () {
    testWidgets('Verify that a user can create beneficiary', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await TransferBeneficiariesPageTest.tapAddBeneficiary(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await TransferNewBeneficiaryAccountScreenTest.enterSortCode(
        tester,
        sortCode: _kSortCode,
      );
      await TransferNewBeneficiaryAccountScreenTest.enterAccountNumber(tester,
          accountNumber: _kAccountNumber);
      await TransferNewBeneficiaryAccountScreenTest.enterRecipientName(tester,
          recipientName: _kRecipientName);
      await TransferNewBeneficiaryAccountScreenTest.tapAddBeneficiaryButton(
          tester);
      await tester.pumpAndSettle();
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await TransactionPinSuccessScreenTest.tapContinueButton(tester);
    });

    testWidgets('Verify that a user can search for beneficiary',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await TransferBeneficiariesPageTest.enterSearchBeneficiary(
        tester,
        searchBen: _kSearchWord,
      );
      await tester.pumpAndSettle();
    });

    testWidgets('Verify that a user can delete beneficiary', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await TransferBeneficiariesPageTest.tapBeneficiary08023212(tester);
      await tester.pumpAndSettle();
      await TransferBeneficiaryScreenTest.tapEditLink(tester);
      await tester.pumpAndSettle();
      await TransferManageBeneficiaryAccountsScreenTest.tapDeleteIcon(tester);
      await TransferManageBeneficiaryAccountsScreenTest.tapDeleteBeneficiary(
          tester);
      await tester.pumpAndSettle();
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinSuccessScreenTest.tapContinueButton(tester);
    });
  });
}
