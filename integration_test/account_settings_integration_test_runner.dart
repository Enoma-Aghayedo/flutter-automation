//@dart=2.11
import 'package:integration_test/integration_test.dart';
import './flows/account_settings/account_settings_test.dart'
    as account_settings_test;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([runRealApiTests]);
}

Future<void> runRealApiTests() async {
  account_settings_test.runAccountTest();
}
