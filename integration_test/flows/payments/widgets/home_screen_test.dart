// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter_test/flutter_test.dart';
import 'package:roava/widgets/cards/balance_card.dart';

class HomeScreenTest {
  static final _accountBalanceWidget =
      find.byKey(RoavaBalanceCard.accountBalanceKey);
  static tapAccountBalanceWidget(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenTest._accountBalanceWidget);
    await tester.pumpAndSettle();
  }
}
