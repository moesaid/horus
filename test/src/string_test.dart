import 'package:flutter_test/flutter_test.dart';
import 'package:horus/horus.dart';

void main() {
  // test for all the methods in '../../lib/src/string.dart' file.
  // HotusString.

  // strContains
  test('strContains', () async {
    expect('foo'.strContains('a'), false);
    expect('foo'.strContains('f'), true);
  });
}
