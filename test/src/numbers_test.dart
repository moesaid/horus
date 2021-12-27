import 'package:flutter_test/flutter_test.dart';
import 'package:horus/horus.dart';

void main() {
  // test for all the methods in HourusNumber

  // abbreviate
  test('abbreviate', () async {
    expect(1000.abbreviate(), '1.0K');
  });

  // currencyFormat
  test('currencyFormat', () async {
    expect(1000.currencyFormat(), '\$1,000.00');
  });

  // enforcePrecision
  test('enforcePrecision', () async {
    expect(0.615.enforcePrecision(2), 0.61);
  });

  // ordinal
  test('ordinal', () async {
    expect(1.ordinal(), '1st');
    expect(2.ordinal(), '2th');
  });
}
