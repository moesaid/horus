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
