import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class PasscodeChangeEmailCaptureScreenTest {
  static final _enterButton = find.text('Enter');

  static tapEnterButton(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(PasscodeChangeEmailCaptureScreenTest._enterButton);
    await tester.pumpAndSettle();
  }
}
