//@dart=2.11
import 'package:integration_test/integration_test.dart';
import './flows/payments/payments_test.dart' as payments_test;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([runRealApiTests]);
}

Future<void> runRealApiTests() async {
  payments_test.runPaymentsTest();
}
