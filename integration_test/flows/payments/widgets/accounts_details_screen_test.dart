import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/products/account_details_screen.dart';

class AccountDetailsScreenTest {
  static final _transferButton =
      find.byKey(AccountDetailPage.transferButtonKey);

  static final _fundButton = find.byKey(AccountDetailPage.fundButtonKey);

  static final _bankTransfer = find.text('Bank Transfer');

  static tapTransferButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(AccountDetailsScreenTest._transferButton);
    await tester.pumpAndSettle();
  }

  static tapFundButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(AccountDetailsScreenTest._fundButton);
    await tester.pumpAndSettle();
  }

  static tapBankTransfer(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(AccountDetailsScreenTest._bankTransfer);
    await tester.pumpAndSettle();
  }
}
