import 'package:flutter_test/flutter_test.dart';
import 'package:horus/horus.dart';

void main() {
  // testing dates methods

  // isLeapYear
  test('isLeapYear', () async {
    expect(isLeapYear(2020), true);
  });

  // daysInMonth
  test('daysInMonth', () async {
    expect(daysInMonth(2020, 1), 31);
  });

  // dayOfTheYear
  test('dayOfTheYear', () async {
    expect(dayOfTheYear(DateTime(2020, 2, 28)), 59);
  });

  // diff
  test('diff', () async {
    expect(diff(DateTime(2020, 2, 28), DateTime(2020, 2, 28)), 0);
  });

  // isSameDate
  test('isSameDate', () async {
    expect(isSameDate(DateTime(2020, 2, 28), DateTime(2020, 2, 28)), true);
  });

  // quarter
  test('quarter', () async {
    expect(quarter(DateTime(2020, 2, 28)), 1);
  });
}
