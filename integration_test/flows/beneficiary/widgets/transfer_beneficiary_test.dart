// ignore_for_file: avoid_relative_lib_imports

import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/fund_transfer/transfer_beneficiaries_screen.dart';
// ignore: import_of_legacy_library_into_null_safe

class TransferBeneficiaryScreenTest {
  static final _edit = find.text('Edit');

  static tapEditLink(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(TransferBeneficiaryScreenTest._edit);
    await tester.pumpAndSettle();
  }
}
