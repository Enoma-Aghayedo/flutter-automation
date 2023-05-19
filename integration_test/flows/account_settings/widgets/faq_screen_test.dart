import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/home/profile/faqs_screen.dart';

class FaqsScreenTest {
  static final _statement = find.text('Statement');

  static final _payments = find.text('Payments');

  static final _security = find.text('Security');

  static final _searchInput = find.byKey(FaqsScreen.searchFieldKey);

  static final searchText = find.text('Search');

  static tapFAQStatement(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(FaqsScreenTest._statement);
    await tester.pumpAndSettle();
  }

  static tapFAQPayment(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(FaqsScreenTest._payments);
    await tester.pumpAndSettle();
  }

  static tapFAQSecurity(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(FaqsScreenTest._security);
    await tester.pumpAndSettle();
  }

  static enterSearchFAQ(WidgetTester tester, {required String search}) async {
    await tester.enterText(FaqsScreenTest._searchInput, search);
    await tester.pumpAndSettle();
  }
}
