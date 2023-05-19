import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/main.dart' as app;
import 'package:roava/network/roava_client/client/roava_client_base.dart';
import 'package:roava/utils/channels.dart';
import 'package:roava/utils/storage.dart';

Future<void> testExecutable(
  List<VoidCallback> testFunctions,
) async {
  setUp(() {
    print('Shared setUp');
    app.main();
  });

  tearDown(() async {
    print('Shared tearDown');
    GetIt.I.reset();
    RoavaStorage storage = RoavaStorage(RoavaChannels());
    await storage.deleteAllUserSecuredData();

    final cacheDir = await getTemporaryDirectory();

    if (cacheDir.existsSync()) {
      cacheDir.deleteSync(recursive: true);
    }

    final appDir = await getApplicationSupportDirectory();

    if (appDir.existsSync()) {
      appDir.deleteSync(recursive: true);
    }

    await RoavaClient.getInstance().clearTokens();
  });

  for (var function in testFunctions) {
    function();
  }
}
