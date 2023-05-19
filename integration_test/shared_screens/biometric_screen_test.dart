import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/auth/biometric_setup_screen.dart';

class BiometricScreenTest {
  static final _biometricSkipButton =
      find.byKey(BiometricSetUpScreen.skipButtonKey);

  static tapBiometricSkipButtonIfVisible(WidgetTester tester) async {
    await tester.pumpAndSettle();

    /// This checks if the biometric skip button is visible
    /// and if it is, it taps it
    /// This is used to skip the biometric screen if it is visible
    /// and if it is not visible, it does nothing

    if (tester.any(BiometricScreenTest._biometricSkipButton)) {
      await tester.tap(BiometricScreenTest._biometricSkipButton);
      await tester.pumpAndSettle();
    }
  }
}
