//@dart=2.11

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' hide Response;
import 'package:mockito/mockito.dart';
import 'package:roava/models/podos/tokens.dart';
import 'package:roava/navigation/app_router.dart';
import 'package:roava/screens/onboarding/otp_verification_screen.dart';
import 'package:roava/utils/platform_external_app_launcher.dart';
import 'package:roava/utils/storage.dart';
import 'package:roava/viewmodels/home_view_model.dart';
import 'package:roava/viewmodels/login_view_model.dart';
import 'package:roava/viewmodels/payments_view_model.dart';
import 'package:roava/viewmodels/signup_view_model.dart';
import 'package:roava/viewmodels/vault_view_model.dart';

/// You can add any reusable Mock classes here, to avoid defining them on each
/// test file that needs them, you'll just need to import them from now on.

class MockBuildContext extends Mock implements BuildContext {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

class MockRequestOptions extends Mock implements RequestOptions {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockAppRouter extends Mock implements AppRouter {}

class MockRoavaStorage extends Mock implements RoavaStorage {}

class MockSignUpViewModel extends Mock implements SignUpViewModel {}

class MockLoginViewModel extends Mock implements LoginViewModel {}

class MockHomeViewModel extends Mock implements HomeViewModel {}

class MockVaultViewModel extends Mock implements VaultViewModel {}

class MockPaymentsViewModel extends Mock implements PaymentsViewModel {}

class MockPlatformExternalAppLauncher extends Mock
    implements PlatformExternalAppLauncher {}

class MockOtpVerificationScreenArguments extends Mock
    implements OtpVerificationScreenArguments {}

class MockClient extends Mock implements Client {}

class MockRequest extends Mock implements Request {}

class MockOnfidoTokenModel extends Mock implements OnfidoTokenModel {}
