import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/general/item_selector.dart';
import 'package:roava/widgets/roava_button.dart';

class SharedElements {
  static final _countryCodeSearchInput =
      find.byKey(ItemSelectorScreen.searchInputKey);

  static final _nextButton = find.byKey(RoavaButton.nextButtonKey);

  static tapNextButton(WidgetTester tester, {bool shouldPump = true}) async {
    await tester.tap(SharedElements._nextButton);
    if (shouldPump) {
      await tester.pumpAndSettle();
    }
  }

  static enterTextCountrySearchInput(WidgetTester tester, countryCode) async {
    await tester.enterText(SharedElements._countryCodeSearchInput, countryCode);
    await tester.pumpAndSettle();
  }

  static tapNextForOtpButton(WidgetTester tester) async {
    await tester.tap(SharedElements._nextButton);
  }
}
