import 'package:flutter_test/flutter_test.dart';

class ReasonsScreenTest {
  static final _reasonsButtonText = find.text('Spend money');

  static tapReasonButtonText(WidgetTester tester) async {
    await tester.tap(ReasonsScreenTest._reasonsButtonText);
    await tester.pumpAndSettle();
  }
}
