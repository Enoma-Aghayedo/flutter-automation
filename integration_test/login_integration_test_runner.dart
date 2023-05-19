//@dart=2.11
import 'package:integration_test/integration_test.dart';
import './flows/login/login_test.dart' as login_test;
import './flows/login/negative_login_test.dart' as negative_login_test;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([runRealApiTests]);
}

Future<void> runRealApiTests() async {
  login_test.runLoginTests();
  negative_login_test.runNegativeLoginTests();
}
