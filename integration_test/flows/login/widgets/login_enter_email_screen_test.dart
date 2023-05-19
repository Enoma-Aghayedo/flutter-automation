import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/auth/login_enter_email_screen.dart';

class LoginEnterEmailScreenTest {
  static final _loginEmailInput =
      find.byKey(LoginEnterEmailScreen.emailInputKey);
  static final _loginEnterButton =
      find.byKey(LoginEnterEmailScreen.enterButtonKey);

  static login(WidgetTester tester, {required String email}) async {
    await tester.enterText(LoginEnterEmailScreenTest._loginEmailInput, email);
    await tester.pumpAndSettle();
    await tester.tap(LoginEnterEmailScreenTest._loginEnterButton);
    await tester.pumpAndSettle();
  }
}
