import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../../shared_screens/shared_elements_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import '../login/login_test.dart';
import 'widgets/accounts_details_screen_test.dart';
import 'widgets/beneficiary_screen_test.dart';
import 'widgets/home_screen_send_test.dart';
import 'widgets/home_screen_test.dart';
import 'widgets/ngn_beneficiary_screen_test.dart';
import 'widgets/ngn_home_screen_test.dart';
import 'widgets/payment_type_test.dart';
import 'widgets/transaction_new_pin_test.dart';
import 'widgets/transaction_pin_screen_test.dart';
import 'widgets/transfer_details_input_screen_test.dart';

runPaymentsTest() {
  group('payments', () {
    testWidgets(
        'Verify that a user can make rova-rova transfer to a beneficiary account GBP',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionAmount(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);

      await SharedElements.tapNextButton(tester);
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle(Duration(seconds: 5));
    });
    testWidgets(
        'Verify that a user can make rova-rova transfer to a beneficiary account NGN',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await NairaHomeScreenTest.tapNairaAccount(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await NGNBeneficiaryScreenTest.tapBeneficiary0077908998(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextNGNTransactionAmount(
          tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);

      await SharedElements.tapNextButton(tester);
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle(Duration(seconds: 5));
    });

    testWidgets('Verify that a user can send money', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenSendTest.tapSendMoney(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await BeneficiaryScreenTest.tapSourceAccount(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionAmount(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);

      await SharedElements.tapNextButton(tester);
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle(Duration(seconds: 5));
    });

    testWidgets('Verify that amount must not exceed account balance',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterBalanceTransactionAmount(
          tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
    });

    testWidgets('Verify that a user can enter reason for payment',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionAmount(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
    });

    testWidgets('Verify that a user cannot proceed without transaction pin',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionAmount(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);

      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
    });

    testWidgets(
        'Verify that a user cannot complete transaction with invalid pin',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await AccountDetailsScreenTest.tapTransferButton(tester);
      await tester.pumpAndSettle();
      await SelectPaymentTypeScreenTest.tapPaymentType(tester);
      await tester.pumpAndSettle();
      await BeneficiaryScreenTest.tapBeneficiary00003901(tester);
      await SharedElements.tapNextButton(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionAmount(tester);
      await TransferDetailsInputScreenTest.enterTextTransactionReferenceInput(
          tester);
      await TransferDetailsInputScreenTest.tapTransactionDetailsNextButton(
          tester);

      await SharedElements.tapNextButton(tester);
      await TransactionInvalidPinScreenTest.enterNewTransactionPin(tester);
    });
    testWidgets('Verify that a user can display recent transactions',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
    });

    testWidgets('Verify that a user can fund account', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenTest.tapAccountBalanceWidget(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await AccountDetailsScreenTest.tapFundButton(tester);
      await tester.pumpAndSettle();
      await AccountDetailsScreenTest.tapBankTransfer(tester);
      await tester.pumpAndSettle();
    });
  });
}
