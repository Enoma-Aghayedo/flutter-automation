import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import '../login/login_test.dart';
import '../profile/widgets/home_profile_test.dart';
import 'widgets/personal_details_test.dart';
import 'widgets/profile_details_test.dart';
import 'widgets/faq_test.dart';
import 'widgets/faq_screen_test.dart';
import 'widgets/profile_legal_document_test.dart';
import 'widgets/document_list_test.dart';

const _kSearch = 'Card';

runAccountTest() {
  group('account_settings', () {
    testWidgets('Verify that a user can edit phone number', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapPersonalDetails(tester);
      await tester.pumpAndSettle();
      await ProfilePersonalDetailsScreenTest.tapPhoneNumber(tester);
    });
    testWidgets('Verify that a user can edit email', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapPersonalDetails(tester);
      await tester.pumpAndSettle();
      await ProfilePersonalDetailsScreenTest.tapEmailAddress(tester);
    });

    testWidgets('Verify that a user can view FAQ Statement', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapHelpAndSupport(tester);
      await HelpAndSupportScreenTest.tapFAQ(tester);
      await FaqsScreenTest.tapFAQStatement(tester);
    });

    testWidgets('Verify that a user can view FAQ Payments', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapHelpAndSupport(tester);
      await HelpAndSupportScreenTest.tapFAQ(tester);
      await FaqsScreenTest.tapFAQPayment(tester);
    });

    testWidgets('Verify that a user can view FAQ Security', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapHelpAndSupport(tester);
      await HelpAndSupportScreenTest.tapFAQ(tester);
      await FaqsScreenTest.tapFAQSecurity(tester);
    });

    testWidgets('Verify that a user can search FAQ', (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapHelpAndSupport(tester);
      await HelpAndSupportScreenTest.tapFAQ(tester);
      await FaqsScreenTest.enterSearchFAQ(
        tester,
        search: _kSearch,
      );
      await tester.pumpAndSettle();
    });

    testWidgets('Verify that a user can view GBP Legal Documents',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapLegalDocument(tester);
      await tester.pumpAndSettle();
      await ProfileLegalDocumentsScreenTest.tapGBPDocument(tester);
      await tester.pumpAndSettle();
      await ProfileLegalDocumentsListScreenTest.tapGeneralTerms(tester);
      await tester.pumpAndSettle();
    });
    testWidgets('Verify that a user can view NGN Legal Documents',
        (tester) async {
      await tester.binding.setSurfaceSize(Size(800, 1200));
      await LoginTest.login(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await HomeScreenProfileTest.tapProfileFooter(tester);
      await tester.pumpAndSettle(Duration(seconds: 3));
      await PersonalDetailsScreenTest.tapLegalDocument(tester);
      await tester.pumpAndSettle();
      await ProfileLegalDocumentsScreenTest.tapNairaDocument(tester);
      await tester.pumpAndSettle();
      await ProfileLegalDocumentsListScreenTest.tapAccountTerms(tester);
      await tester.pumpAndSettle();
    });
  });
}
