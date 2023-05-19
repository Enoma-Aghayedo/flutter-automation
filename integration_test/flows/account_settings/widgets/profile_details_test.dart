import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe

class ProfilePersonalDetailsScreenTest {
  static final _phoneNumber = find.text('+440101010101');

  static final _emailAddress = find.text('wise806@yopmail.com');

  static tapPhoneNumber(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfilePersonalDetailsScreenTest._phoneNumber);
    await tester.pumpAndSettle();
  }

  static tapEmailAddress(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(ProfilePersonalDetailsScreenTest._emailAddress);
    await tester.pumpAndSettle();
  }
}
