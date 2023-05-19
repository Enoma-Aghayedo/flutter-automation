import 'package:flutter_test/flutter_test.dart';
import 'package:roava/screens/onboarding/address_capture.dart';
import 'package:roava/widgets/roava_country_selection_list.dart';

class CountryScreen2Test {
  static final _countryInput =
      find.byKey(SignUpAddressCaptureScreen.countryInputKey);
  static final _countryNigeria =
      find.byKey(RoavaCountrySelectorList.countryKey);

  static tapCountryInput(WidgetTester tester) async {
    await tester.tap(CountryScreen2Test._countryInput);
    await tester.pumpAndSettle();
  }

  static tapCountryKeyNigeria(WidgetTester tester) async {
    await tester.tap(CountryScreen2Test._countryNigeria);
    await tester.pumpAndSettle();
  }
}
