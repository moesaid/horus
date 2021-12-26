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

  // strContainsAny
  test('strContainsAny', () async {
    expect('foo'.strContainsAny(['a', 'b']), false);
    expect('foo'.strContainsAny(['f', 'o']), true);
  });

  // strContainsAll
  test('strContainsAll', () async {
    expect('foo'.strContainsAll(['a', 'b']), false);
    expect('foo'.strContainsAll(['f', 'o']), true);
  });

  // strContainsAll
  test('strContainsAll', () async {
    expect('foo'.strContainsAll(['a', 'b']), false);
    expect('foo'.strContainsAll(['f', 'o']), true);
  });

  // strEndsWith
  test('strEndsWith', () async {
    expect('foo'.strEndsWith('o'), true);
    expect('foo'.strEndsWith('f'), false);
  });

  // strEndsWithAny
  test('strEndsWithAny', () async {
    expect('foo'.strEndsWithAny(['o', 'f']), true);
    expect('foo'.strEndsWithAny(['a', 'b']), false);
  });

  // strEquals
  test('strEquals', () async {
    expect('foo'.srtEqual('foo'), true);
    expect('foo'.srtEqual('bar'), false);
  });

  // strStartsWith
  test('strStartsWith', () async {
    expect('foo'.strStartsWith('f'), true);
    expect('foo'.strStartsWith('o'), false);
  });

  // strStartsWithAny
  test('strStartsWithAny', () async {
    expect('foo'.strStartsWithAny(['f', 'o']), true);
    expect('foo'.strStartsWithAny(['a', 'b']), false);
  });

  // srtEqual
  test('srtEqual', () async {
    expect('foo'.srtEqual('foo'), true);
    expect('foo'.srtEqual('bar'), false);
  });

  // strEqualsAny
  test('strEqualsAny', () async {
    expect('foo'.strEqualsAny(['foo', 'bar']), true);
    expect('foo'.strEqualsAny(['a', 'b']), false);
  });

  // strIsAscii
  test('strIsAscii', () async {
    expect('foo'.strIsAscii(), true);
    expect('ü'.strIsAscii(), false);
  });

  // strIsUuid
  test('strIsUuid', () async {
    expect('foo'.strIsUuid(), false);
    expect('12345678-1234-1234-1234-123456789012'.strIsUuid(), true);
  });

  // strFinish
  test('strFinish', () async {
    expect('foo'.strFinish('bar'), 'foo bar');
  });

  // strStart
  test('strStart', () async {
    expect('foobar'.strStart('foo'), 'foobar');
  });

  // strHeadline
  test('strHeadline', () async {
    expect('foo.bar'.strHeadline(), 'Foo Bar');
    expect('foo_bar'.strHeadline(), 'Foo Bar');
    expect('foo-bar'.strHeadline(), 'Foo Bar');
  });

  // strKebab
  test('strKebab', () async {
    expect('fooBar'.strKebab(), 'foo-bar');
  });
}
