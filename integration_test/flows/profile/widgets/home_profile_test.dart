import 'package:flutter_test/flutter_test.dart';
import 'package:roava/widgets/bottom/bottom_nav.dart';
// ignore: import_of_legacy_library_into_null_safe

class HomeScreenProfileTest {
  static final _profileFooter = find.byWidgetPredicate(
      (widget) => widget is BottomNavEntry && widget.title == "Profile");

  static final _privacySecurity = find.text('Login & Security');

  static final _logout = find.text('Logout');

  static tapProfileFooter(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenProfileTest._profileFooter);
    await tester.pumpAndSettle();
  }

  static tapPrivacySecurity(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenProfileTest._privacySecurity);
    await tester.pumpAndSettle();
  }

  static tapLogout(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(HomeScreenProfileTest._logout);
    await tester.pumpAndSettle();
  }
}
