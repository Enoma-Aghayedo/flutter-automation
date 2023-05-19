//@dart=2.11
import 'package:integration_test/integration_test.dart';
import './flows/profile/profile_test.dart' as profile_test;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testExecutable([runRealApiTests]);
}

Future<void> runRealApiTests() async {
  profile_test.runProfileTest();
}
