//@dart=2.11
import 'package:integration_test/integration_test.dart';

import 'flows/onboarding/onboarding_ngn_test.dart';
import 'flows/onboarding/onboarding_negative_cases_test.dart';
import 'flows/onboarding/onboarding_test.dart';
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([
    runOnBoardingTests,
    runOnBoardingNGNTests,
    runNegativeOnBoardingTests,
  ]);
}
