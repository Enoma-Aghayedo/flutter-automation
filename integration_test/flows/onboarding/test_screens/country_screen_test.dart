import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/address_capture.dart';
import 'package:roava/widgets/roava_country_selection_list.dart';

class CountryScreenTest {
  static final _countryInput =
      find.byKey(SignUpAddressCaptureScreen.countryInputKey);
  static final _countryUnitedKingdom =
      find.byKey(RoavaCountrySelectorList.countryKey);

  static tapCountryInput(WidgetTester tester) async {
    await tester.tap(CountryScreenTest._countryInput);
    await tester.pumpAndSettle();
  }

  static tapCountryKeyUnitedKingdom(WidgetTester tester) async {
    await tester.tap(CountryScreenTest._countryUnitedKingdom);
    await tester.pumpAndSettle();
  }
}
