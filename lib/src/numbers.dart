part of '../horus.dart';

// **************************************************************************
// Number utilities.
// **************************************************************************

extension HorusNumber on num {
  /// Returns the absolute value of this [num].
  ///
  /// For example:
  ///
  ///     const a = -42;
  ///     const b = 42;
  ///     assert(a.abs() == b);
  ///
  num abs() => this < 0 ? -this : this;

  /// Returns the sign of this [num].
  ///
  /// For example:
  ///
  ///     const a = -42;
  ///     const b = 42;
  ///     assert(a.sign() == -1);
  ///     assert(b.sign() == 1);
  ///
  num sign() => this < 0 ? -1 : 1;

  /// Returns the integer nearest to this [num].
  ///
  /// For example:
  ///
  ///     const a = -42.5;
  ///     const b = 42.5;
  ///     assert(a.round() == -43);
  ///     assert(b.round() == 43);
  ///
  num round() => this < 0 ? (this - 0.5).floor() : (this + 0.5).floor();

  /// Returns the integer obtained by discarding any fractional
  /// digits from this [num].
  ///
  /// For example:
  ///
  ///     const a = -42.5;
  ///     const b = 42.5;
  ///     assert(a.truncate() == -42);
  ///     assert(b.truncate() == 42);
  ///
  num truncate() => this < 0 ? this.floor() : ceil();

  /// Returns the integer obtained by discarding any fractional
  /// digits from this [num].
  ///
  /// For example:
  ///
  ///     const a = -42.5;
  ///     const b = 42.5;
  ///     assert(a.floor() == -43);
  ///     assert(b.floor() == 42);
  ///
  num floor() => toDouble().floor();

  /// Returns the integer obtained by discarding any fractional
  /// digits

  // The abbreviate function is used to abbreviate numbers.
  // Abbreviate number to thousands (K), millions (M) or billions (B):
  // for example:
  // 1.0K, 1.0M, 1.0B
  String abbreviate() {
    if (this < 1000) return toString();
    if (this < 1000000) return (this / 1000).toStringAsFixed(1) + 'K';
    if (this < 1000000000) return (this / 1000000).toStringAsFixed(1) + 'M';
    return (this / 1000000000).toStringAsFixed(1) + 'B';
  }

  // The currencyFormat function is used to format numbers to currency.
  // can customize the currency symbol, decimal digits, thousands separator,
  // For example:
  // "1,000.00"
  // "1,000.0"
  // "1,000"
  String currencyFormat([
    int nDecimalDigits = 2,
    String decimalSeparator = '.',
    String thousandsSeparator = ',',
    String currencySymbol = '\$',
  ]) {
    // can't use enforce precision since it returns a number and we are
    // doing a RegExp over the string
    final fixed = toStringAsFixed(nDecimalDigits);
    final parts = fixed.split(decimalSeparator);
    final integer = parts[0];
    final fraction = parts[1];
    final reg = RegExp(r'(\d+)(\d{3})');
    final str = integer.replaceAllMapped(reg, (match) {
      return match.group(1)! + thousandsSeparator + match.group(2)!;
    });

    // add currancy symbol
    return currencySymbol + str + decimalSeparator + fraction;
  }

  // The enforcePrecision function is used to enforce a maximum number of
  // decimal digits.
  // For example:
  // enforcePrecision(0.615, 2); // 0.62

  num enforcePrecision(int nDecimalDigits) {
    final fixed = toStringAsFixed(nDecimalDigits);
    final parts = fixed.split('.');
    final integer = parts[0];
    final fraction = parts[1];
    final reg = RegExp(r'(\d+)(\d{3})');
    final str = integer.replaceAllMapped(reg, (match) {
      return match.group(1)! + ',' + match.group(2)!;
    });

    // add currancy symbol
    return double.parse(str + '.' + fraction);
  }

  // The ordinal function is used to format numbers to ordinal.
  // For example:
  // 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th
  String ordinal() {
    final number = toInt();
    final suffix = <String>[
      'th',
      'st',
      'nd',
      'rd',
      'th',
      'th',
      'th',
      'th',
      'th',
      'th',
    ];
    final mod10 = number % 10;
    final mod100 = number % 100;
    if ((mod10 == 1 && mod100 != 11) || mod100 == 0) {
      return '$number${suffix[mod10]}';
    }
    return '$number${suffix[4]}';
  }
}
