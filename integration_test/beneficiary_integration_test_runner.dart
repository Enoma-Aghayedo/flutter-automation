//@dart=2.11
import 'package:integration_test/integration_test.dart';
import './flows/beneficiary/beneficiary_test.dart' as beneficiary_test;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([runRealApiTests]);
}

Future<void> runRealApiTests() async {
  beneficiary_test.runBeneficiaryTest();
}
