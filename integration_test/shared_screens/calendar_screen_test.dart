import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:roava/screens/general/calendar_sheet.dart';

import '../flows/onboarding/test_screens/primary_adress_screen_test.dart';

const _kDayDateOfBirth = '10';

class CalendarScreenTest {
  static final _personalInfoYear1985 = find.text('1985');

  static tapPersonalInfoYear1985(WidgetTester tester) async {
    await tester.tap(CalendarScreenTest._personalInfoYear1985);
    await tester.pumpAndSettle();
  }

  static final _yearGridScrollable =
      find.byKey(CalendarSheet.yearGridScrollable);

  static final _personalInfoYear2005 = find.text('2005');

  static final _personalInfoYear2023 = find.text('2023');

  static final _switchYearButton =
      find.byKey(CalendarSheet.switchYearButtonKey);

  static personalInfoYear(year) => find.text(year);

  static final _doneChooseDateButton =
      find.byKey(CalendarSheet.doneChooseDateButtonKey);

  static final _doneChooseYearButton =
      find.byKey(CalendarSheet.doneChooseYearButtonKey);

  static final _september = find.textContaining('September');

  static personalInfoDay(day) => find.text(day);

  static dragUntilVisiblePersonalInfoYear1985(WidgetTester tester) async {
    await tester.dragUntilVisible(
      CalendarScreenTest._personalInfoYear1985,
      CalendarScreenTest._yearGridScrollable,
      Offset(0, -50),
    );
    await tester.pumpAndSettle();
  }

  static is2005YearVisible() async {
    expect(CalendarScreenTest._personalInfoYear2005, findsNothing);
  }

  static is2023YearVisible() async {
    expect(CalendarScreenTest._personalInfoYear2023, findsNothing);
  }

  static tapSwitchYearButton(WidgetTester tester) async {
    await tester.tap(CalendarScreenTest._switchYearButton);
    await tester.pumpAndSettle(Duration(milliseconds: 400));
  }

  static tapPersonalInfoYear(WidgetTester tester, year) async {
    await tester.tap(personalInfoYear(year));
    await tester.pumpAndSettle(Duration(milliseconds: 400));
  }

  static tapDoneChooseDateButton(WidgetTester tester) async {
    await tester.tap(CalendarScreenTest._doneChooseDateButton);
    await tester.pumpAndSettle();
  }

  static tapDoneChooseYearButton(WidgetTester tester) async {
    await tester.tap(CalendarScreenTest._doneChooseYearButton);
    await tester.pumpAndSettle();
  }

  static tapPersonalInfoDay(WidgetTester tester, day) async {
    await tester.tap(personalInfoDay(day), warnIfMissed: false);
    await tester.pumpAndSettle(Duration(milliseconds: 400));
  }

  static selectMonth(WidgetTester tester) async {
    final now = DateTime.now();

    if (now.month < 9) {
      while (!tester.any(CalendarScreenTest._september)) {
        await PrimaryAdressScreenTest.tapChevronRightIcon(tester);
      }
      await CalendarScreenTest.tapPersonalInfoDay(
        tester,
        _kDayDateOfBirth,
      );
    } else if (now.month > 9) {
      while (!tester.any(CalendarScreenTest._september)) {
        await PrimaryAdressScreenTest.tapChevronLeftIcon(tester);
      }
      await CalendarScreenTest.tapPersonalInfoDay(
        tester,
        _kDayDateOfBirth,
      );
    } else {
      await CalendarScreenTest.tapPersonalInfoDay(
        tester,
        _kDayDateOfBirth,
      );
    }
  }
}
