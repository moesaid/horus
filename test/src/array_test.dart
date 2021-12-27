import 'package:flutter_test/flutter_test.dart';
import 'package:horus/horus.dart';

void main() {
  // array testing

  // arrAccessible
  test('arrAccessible', () {
    var arr = [1, 2, 3];
    expect([1, 2, 3].arrAccessible(), true);
  });

  // arrType
  test('arrType', () {
    expect([1, 2, 3].arrType(), 'List<int>');
  });

  // arrLength
  test('arrLength', () {
    expect([1, 2, 3].arrLength(), 3);
  });

  // arrFirst
  test('arrFirst', () {
    expect([1, 2, 3].arrFirst(), 1);
  });

  // arrLast
  test('arrLast', () {
    expect([1, 2, 3].arrLast(), 3);
  });

  // arrRandom
  test('arrRandom', () {
    expect([1, 2, 3].arrRandom(), anyOf([1, 2, 3]));
  });

  // arrCollapse
  test('arrCollapse', () {
    expect(
        [
          [1, 2],
          [3, 4]
        ].arrCollapse(),
        [1, 2, 3, 4]);
  });

  // arrAdd
  test('arrAdd', () {
    expect([1, 2, 3].arrAdd(4), [1, 2, 3, 4]);
  });

  // arrAddAll
  test('arrAddAll', () {
    expect([1, 2, 3].arrAddAll([4, 5]), [1, 2, 3, 4, 5]);
  });

  // arrContains
  test('arrContains', () {
    expect([1, 2, 3].arrContains(2), true);
  });

  // arrContainsAll
  test('arrContainsAll', () {
    expect([1, 2, 3].arrContainsAll([2, 3]), true);
  });

  // arrSum
  test('arrSum', () {
    expect([1, 2, 3].arrSum(), 6);
  });

  // arrAvg
  test('arrAvg', () {
    expect([1, 2, 3].arrAvg(), 2);
  });

  // arrMin
  test('arrMin', () {
    expect([1, 2, 3].arrMin(), 1);
  });

  // arrMax
  test('arrMax', () {
    expect([1, 2, 3].arrMax(), 3);
  });

  // arrDifference
  test('arrDifference', () {
    expect([1, 2, 3, 4].arrDifference(), 3);
  });

  // arrCompact
  test('arrCompact', () {
    expect([1, 2, false, 3, 4].arrCompact(), [1, 2, 3, 4]);
  });

  // arrFlatten
  test('arrFlatten', () {
    expect(
        [
          1,
          2,
          [3, 4]
        ].arrFlatten(),
        [1, 2, 3, 4]);
  });

  // arrConcat
  test('arrConcat', () {
    expect([1, 2].arrConcat([3, 4]), [1, 2, 3, 4]);
  });

  // arrUnion
  test('arrUnion', () {
    expect([1, 2].arrUnion([3, 4]), [1, 2, 3, 4]);
  });

  // arrKeys
  test('arrKeys', () {
    expect(
        [
          {'a': 1},
          {'b': 2}
        ].arrKeys(),
        ['a', 'b']);
  });

  // arrValues
  test('arrValues', () {
    expect(
        [
          {'a': 1},
          {'b': 2}
        ].arrValues(),
        [1, 2]);
  });

  // arrPluck
  test('arrPluck', () {
    expect(
      [
        {'name': 'moe', 'age': 40},
        {'name': 'larry', 'age': 50}
      ].arrPluck('name'),
      ['moe', 'larry'],
    );
  });

  // arrWhereKey
  test('arrWhereKey', () {
    expect(
      [
        {'a': 1},
        {'b': 2}
      ].arrWhereKey('a'),
      {'a': 1},
    );
  });

  // arrWhereValue
  test('arrWhereValue', () {
    expect(
      [
        {'a': 1},
        {'b': 2}
      ].arrWhereValue(2),
      {'b': 2},
    );
  });

  // arrWhereId
  test('arrWhereId', () {
    expect(
      [
        {'id': 1, 'name': 'moe', 'age': 40},
        {'id': 2, 'name': 'larry', 'age': 50}
      ].arrWhereId(2),
      {'id': 2, 'name': 'larry', 'age': 50},
    );
  });

  // arrUniq
  test('arrUniq', () {
    expect([1, 2, 1, 3, 1].arrUniq(), [1, 2, 3]);
  });

  // arrUniqBy
  test('arrUniqBy', () {
    expect(
        [
          {'a': 1},
          {'a': 2},
          {'a': 1}
        ].arrUniqBy('a'),
        [1, 2]);
  });
}
