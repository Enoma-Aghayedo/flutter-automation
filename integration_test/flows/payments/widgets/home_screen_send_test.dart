import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class HomeScreenSendTest {
  static final _sendMoney = find.text('Send');
  static tapSendMoney(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenSendTest._sendMoney);
    await tester.pumpAndSettle();
  }
}
