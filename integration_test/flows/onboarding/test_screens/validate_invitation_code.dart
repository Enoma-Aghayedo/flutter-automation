import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/onboarding/invitation_code/validate_invitation_code_screen.dart';

class ValidateInvitationCodeScreenTest {
  static final _invitationCodeInput =
      find.byKey(ValidateInvitationCodeScreen.codeInputKey);

  static final _invitationSubmitButton =
      find.byKey(ValidateInvitationCodeScreen.submitButtonKey);

  static invitation(WidgetTester tester, {required String code}) async {
    await tester.enterText(
        ValidateInvitationCodeScreenTest._invitationCodeInput, code);
    await tester.pumpAndSettle();
    await tester.tap(ValidateInvitationCodeScreenTest._invitationSubmitButton);
    await tester.pumpAndSettle();
  }
}
