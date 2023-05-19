import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/welcome_screen.dart';

class WelcomeScreenTest {
  static final _createAccountButton =
      find.byKey(WelcomeScreen.createAccountKey);

  static final _loginButton = find.byKey(WelcomeScreen.loginKey);

  static createAccount(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(_createAccountButton);
    await tester.pumpAndSettle();
  }

  static tapLogin(WidgetTester tester) async {
    await tester.tap(_loginButton);
    await tester.pumpAndSettle();
  }
}
