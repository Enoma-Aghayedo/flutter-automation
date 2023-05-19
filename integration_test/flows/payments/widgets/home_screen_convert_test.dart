import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class HomeScreenConvertTest {
  static final _convertMoney = find.text('Convert');
  static tapConvertMoney(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenConvertTest._convertMoney);
    await tester.pumpAndSettle();
  }
}
