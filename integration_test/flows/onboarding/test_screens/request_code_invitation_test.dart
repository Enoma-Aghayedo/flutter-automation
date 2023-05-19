import 'package:flutter_test/flutter_test.dart';

class RequestCodeInvitation {
  static final _requestButtonText = find.text('Enter Invitation Code');

  static tapRequestButtonText(WidgetTester tester) async {
    await tester.tap(RequestCodeInvitation._requestButtonText);
    await tester.pumpAndSettle();
  }
}
