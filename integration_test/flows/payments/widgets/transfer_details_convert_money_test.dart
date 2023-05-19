import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/fund_transfer/transfer_details_input_screen.dart';
// ignore: import_of_legacy_library_into_null_safe

class TransferDetailsConvertMoneyTest {
  static final _transactionReferenceInput =
      find.byKey(TransferDetailsInputScreen.transactionReferenceInputKey);

  static final _transactionAmountInput = find.text('0.00');

  static enterTextTransactionReferenceInput(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsConvertMoneyTest._transactionReferenceInput,
        'Automated reference');
    await tester.pumpAndSettle();
  }

  static enterTextTransactionAmount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.enterText(
        TransferDetailsConvertMoneyTest._transactionAmountInput, '3.00');
    await tester.pumpAndSettle();
  }

  static final _transactionDetailsNextButton =
      find.byKey(TransferDetailsInputScreen.transactionDetailsNextButtonKey);

  static final _transactionNextText = find.text('Next');

  static tapTransactionDetailsNextButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester
        .tap(TransferDetailsConvertMoneyTest._transactionDetailsNextButton);
    await tester.pumpAndSettle();
  }

  static dragUntilVisibleTransactionNextButton(WidgetTester tester) async {
    await tester.dragUntilVisible(
      TransferDetailsConvertMoneyTest._transactionNextText,
      TransferDetailsConvertMoneyTest._transactionDetailsNextButton,
      Offset(0, -50),
    );

    await tester.pumpAndSettle();
  }
}
