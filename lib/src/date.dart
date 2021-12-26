part of '../horus.dart';

// **************************************************************************
// dates helpers
// **************************************************************************

// isLeapYear returns true if the given year is a leap year
bool isLeapYear(int year) {
  return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
}

// The daysInMonth function is used to calculate the number of days in a month for a given year.
// The month parameter is 1-based (i.e. Jan = 1, Feb = 2 etc.).
// The year parameter is 4 digit.
int daysInMonth(int month, int year) {
  if (month == 2) {
    if (isLeapYear(year)) {
      return 29;
    } else {
      return 28;
    }
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;
  } else {
    return 31;
  }
}

// The dayOfTheYear function returns the day of the year for a given date:
int dayOfTheYear(DateTime date) {
  int days = 0;
  for (int i = 1; i < date.month; i++) {
    days += daysInMonth(i, date.year);
  }
  days += date.day;
  return days;
}

// The diff function returns the difference between two dates in days.
// The first parameter is the start date, the second parameter is the end date.
// The start date is inclusive, the end date is exclusive.
// Available units: year, month, week, day, hour, minute, second, millisecond.
// The default unit is day.
int diff(DateTime start, DateTime end, [String unit = 'day']) {
  if (unit == 'year') {
    return end.year - start.year;
  } else if (unit == 'month') {
    return (end.year - start.year) * 12 + end.month - start.month;
  } else if (unit == 'week') {
    return (end.millisecondsSinceEpoch - start.millisecondsSinceEpoch) ~/
        (1000 * 60 * 60 * 24 * 7);
  } else if (unit == 'day') {
    return (end.millisecondsSinceEpoch - start.millisecondsSinceEpoch) ~/
        (1000 * 60 * 60 * 24);
  } else if (unit == 'hour') {
    return (end.millisecondsSinceEpoch - start.millisecondsSinceEpoch) ~/
        (1000 * 60 * 60);
  } else if (unit == 'minute') {
    return (end.millisecondsSinceEpoch - start.millisecondsSinceEpoch) ~/
        (1000 * 60);
  } else if (unit == 'second') {
    return (end.millisecondsSinceEpoch - start.millisecondsSinceEpoch) ~/ 1000;
  } else if (unit == 'millisecond') {
    return end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
  } else {
    throw Exception('Invalid unit: $unit');
  }
}

// The isSameDate function returns true if the two dates are the same date.
bool isSameDate(DateTime start, DateTime end) {
  return start.year == end.year &&
      start.month == end.month &&
      start.day == end.day;
}
