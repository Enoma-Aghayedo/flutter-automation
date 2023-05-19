import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class NairaHomeScreenTest {
  static final _nairaAccount = find.text('Rova MFB Current Account');

  static tapNairaAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(NairaHomeScreenTest._nairaAccount);
    await tester.pumpAndSettle();
  }
}
