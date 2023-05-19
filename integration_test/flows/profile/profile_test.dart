import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../../shared_screens/shared_elements_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import '../login/login_test.dart';
import '../payments/widgets/payment_type_test.dart';
import 'widgets/change_login_passcode_test.dart';
import '../payments/widgets/accounts_details_screen_test.dart';
import '../payments/widgets/beneficiary_screen_test.dart';
import '../payments/widgets/home_screen_test.dart';
import '../payments/widgets/transaction_new_pin_test.dart';
import '../payments/widgets/transaction_pin_screen_test.dart';
import '../payments/widgets/transfer_details_input_screen_test.dart';
import 'widgets/change_passcode_personal_info_test.dart';
import 'widgets/home_profile_test.dart';
import 'widgets/transaction_pin_success_test.dart';
import 'widgets/passcode_change_text.dart';

const _kFirstName = 'Akeem806';
const _kLastName = 'Ojo';

runProfileTest() {
  group('profile', () {
    testWidgets('Verify that a user can change passcode', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeLoginPasscode(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PasscodeChangeEmailCaptureScreenTest.tapEnterButton(tester);
      await tester.pumpAndSettle();
      await PasscodeChangePersonalInfoTest.enterFirstName(
        tester,
        firstName: _kFirstName,
      );
      await PasscodeChangePersonalInfoTest.enterLastName(
        tester,
        lastName: _kLastName,
      );
      await PasscodeChangePersonalInfoTest.tapEnterButton(tester);
    });
    testWidgets('Verify that a user can login with new passcode',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeLoginPasscode(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PasscodeChangeEmailCaptureScreenTest.tapEnterButton(tester);
      await tester.pumpAndSettle();
    });
    testWidgets('Verify that a user cannot login with old passcode',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeLoginPasscode(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PasscodeChangeEmailCaptureScreenTest.tapEnterButton(tester);
      await tester.pumpAndSettle();
    });
    testWidgets('Verify that a user can unchange passcode', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeLoginPasscode(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PasscodeChangeEmailCaptureScreenTest.tapEnterButton(tester);
      await tester.pumpAndSettle();
    });
    testWidgets('Verify that a user can change Transaction pin',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionInvalidPinScreenTest.enterNewTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionInvalidPinScreenTest.enterNewTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinSuccessScreenTest.tapContinueButton(tester);
    });
    testWidgets('Verify that a user can complete transaction with new pin',
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
      await SharedElements.tapNextButton(tester);
      await tester.pumpAndSettle(Duration(seconds: 5));
    });
    testWidgets('Verify that a user can not complete transaction with old pin',
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
    testWidgets('Verify that a user can unchange transaction pin',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapPrivacySecurity(tester);
      await tester.pumpAndSettle();
      await ProfilePrivacyAndSecurityScreenTest.tapChangeTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionInvalidPinScreenTest.enterNewTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinScreenTest.enterTransactionPin(tester);
      await tester.pumpAndSettle();
      await TransactionPinSuccessScreenTest.tapContinueButton(tester);
    });
    testWidgets('Verify that a user can logout', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapLogout(tester);
      await tester.pumpAndSettle();
    });
  });
}
