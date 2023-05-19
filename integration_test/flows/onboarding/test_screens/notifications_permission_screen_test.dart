import 'package:flutter_test/flutter_test.dart';

class NotificationScreenTest {
//  static final _denyNotificationsButton =
  //     find.byKey(NotificationSetUpScreen.denyNotificationsKey);

  static final _allowNotificationsButton = find.text("Allow Notifications");

  // static tapDenyNotificationsButtonScreen(WidgetTester tester) async {
  //   await tester.tap(NotificationScreenTest._denyNotificationsButton);
  //   await tester.pumpAndSettle();
  // }

  static tapAllowNotificationsButtonScreen(WidgetTester tester) async {
    await tester.tap(NotificationScreenTest._allowNotificationsButton);
    await tester.pumpAndSettle();
  }
}
