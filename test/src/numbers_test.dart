import 'package:flutter_test/flutter_test.dart';

void main() {
  // test for all the methods in HourusNumber

  // abs
  test('abs', () {
    expect(42.abs(), 42);
    expect(0.abs(), 0);
  });
}
