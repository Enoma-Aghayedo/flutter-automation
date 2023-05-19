import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/fund_transfer/transfer_details_input_screen.dart';
// ignore: import_of_legacy_library_into_null_safe

class TransferDetailsInputScreenTest {
  static final _transactionReferenceInput =
      find.byKey(TransferDetailsInputScreen.transactionReferenceInputKey);

  static final _transactionAmountInput = find.text('0.00');

  static final _transactionAmount1Input = find.text('0.00');

  static enterTextTransactionReferenceInput(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsInputScreenTest._transactionReferenceInput,
        'Automated reference');
    await tester.pumpAndSettle();
  }

  static enterTextTransactionAmount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsInputScreenTest._transactionAmountInput, '1.33');
    await tester.pumpAndSettle();
  }

  static enterTextNGNTransactionAmount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsInputScreenTest._transactionAmountInput, '20.00');
    await tester.pumpAndSettle();
  }

  static enterBalanceTransactionAmount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsInputScreenTest._transactionAmount1Input, '300000.00');
    await tester.pumpAndSettle();
  }

  static final _transactionDetailsNextButton =
      find.byKey(TransferDetailsInputScreen.transactionDetailsNextButtonKey);

  static final _transactionNextText = find.text('Next');

  static tapTransactionDetailsNextButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester
        .tap(TransferDetailsInputScreenTest._transactionDetailsNextButton);
    await tester.pumpAndSettle();
  }

  static dragUntilVisibleTransactionNextButton(WidgetTester tester) async {
    await tester.dragUntilVisible(
      TransferDetailsInputScreenTest._transactionNextText,
      TransferDetailsInputScreenTest._transactionDetailsNextButton,
      Offset(0, -50),
    );

    await tester.pumpAndSettle();
  }
}
