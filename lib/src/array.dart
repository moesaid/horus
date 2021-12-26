part of '../horus.dart';

extension Horus on List {
  // The arrAccessible method determines if the list is accessible.
  bool arrAccessible() {
    return length > 0;
  }

  // The arrType method determines the type of the list.
  String arrType() {
    return runtimeType.toString();
  }

  // The arrLength method determines the length of the list.
  int arrLength() {
    return length;
  }

  // The arrFirst method returns the first element of the list.
  dynamic arrFirst() {
    return arrAccessible() ? this[0] : null;

    // example:
    // [1, 2, 3].arrFirst(); // 1
  }

  // The arrLast method returns the last element of the list.
  dynamic arrLast() {
    return arrAccessible() ? this[length - 1] : null;

    // example:
    // [1, 2, 3].arrLast(); // 3
  }

  // The arrRandom method returns a random element of the list.
  dynamic arrRandom() {
    return arrAccessible() ? this[Random().nextInt(length)] : null;

    // example:
    // [1, 2, 3].arrRandom(); // 1, 2, or 3
  }

  // The arrCollapse method collapses an array of arrays into a single array:
  List arrCollapse() {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (this[i] is List) {
        arr.addAll(this[i]);
      } else {
        arr.add(this[i]);
      }
    }
    return arr;

    // example:
    // [[1, 2], [3, 4]].arrCollapse(); // [1, 2, 3, 4]
  }

  // The arrAdd method adds an item to the end of the list:
  List arrAdd(dynamic item) {
    add(item);
    return this;

    // example:
    // [1, 2, 3].arrAdd(4); // [1, 2, 3, 4]
  }

  // The arrAddAll method adds all items in the list to the end of the list:
  List arrAddAll(List items) {
    for (var i = 0; i < items.length; i++) {
      add(items[i]);
    }
    return this;

    // example:
    // [1, 2, 3].arrAddAll([4, 5, 6]); // [1, 2, 3, 4, 5, 6]
  }

  // The arrContains method determines if the list contains a specific item:
  bool arrContains(dynamic item) {
    return contains(item);

    // example:
    // [1, 2, 3].arrContains(2); // true
  }

  // The arrContainsAll method determines if the list contains all items in a specific list:
  bool arrContainsAll(List items) {
    for (var i = 0; i < items.length; i++) {
      if (!contains(items[i])) {
        return false;
      }
    }
    return true;

    // example:
    // [1, 2, 3].arrContainsAll([1, 2]); // true
  }

  // The arrSum method sum the values of an array:
  num arrSum() {
    num sum = 0;
    for (var i = 0; i < length; i++) {
      sum += this[i];
    }
    return sum;

    // example:
    // [1, 2, 3].arrSum(); // 6
  }

  // The arrAvg method returns the average value of an array:
  num arrAvg() {
    return arrSum() / length;

    // example:
    // [1, 2, 3].arrAvg(); // 2
  }

  // The arrMin method returns the minimum value of an array:
  num arrMin() {
    num min = this[0];
    for (var i = 0; i < length; i++) {
      if (this[i] < min) {
        min = this[i];
      }
    }
    return min;

    // example:
    // [1, 2, 3].arrMin(); // 1
  }

  // The arrMax method returns the maximum value of an array:
  num arrMax() {
    num max = this[0];
    for (var i = 0; i < length; i++) {
      if (this[i] > max) {
        max = this[i];
      }
    }
    return max;

    // example:
    // [1, 2, 3].arrMax(); // 3
  }

  // The arrDifference method returns the difference between the max and min values of an array:
  num arrDifference() {
    return arrMax() - arrMin();

    // example:
    // [1, 2, 3 ,4].arrDifference(); // 3
  }

  // The arrCompact method removes all falsy values from an array:
  List arrCompact() {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (this[i]) {
        arr.add(this[i]);
      }
    }
    return arr;

    // example:
    // [1, 2, false, 3, null, 4].arrCompact(); // [1, 2, 3, 4]
  }

  // The arrFlatten method flattens a multi-dimensional array into a single array:
  List arrFlatten() {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (this[i] is List) {
        arr.addAll(this[i]);
      } else {
        arr.add(this[i]);
      }
    }
    return arr;

    // example:
    // [[1, 2], [3, 4]].arrFlatten(); // [1, 2, 3, 4]
  }

  // The arrConcat method concatenates two or more arrays:
  List arrConcat(List items) {
    List arr = [];
    for (var i = 0; i < length; i++) {
      arr.add(this[i]);
    }
    for (var i = 0; i < items.length; i++) {
      arr.add(items[i]);
    }
    return arr;

    // example:
    // [1, 2].arrConcat([3, 4]); // [1, 2, 3, 4]
  }

  // The arrUnion method returns an array of unique values, in order, from all given arrays
  List arrUnion(List items) {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (!arr.contains(this[i])) {
        arr.add(this[i]);
      }
    }
    for (var i = 0; i < items.length; i++) {
      if (!arr.contains(items[i])) {
        arr.add(items[i]);
      }
    }
    return arr;

    // example:
    // [1, 2, 3].arrUnion([2, 3, 4]); // [1, 2, 3, 4]
  }

  // The arrKeys method returns the keys of an array of objects:
  List arrKeys() {
    List keys = [];
    for (var i = 0; i < length; i++) {
      keys.add(this[i].keys.toList()[0]);
    }
    return keys;

    // example:
    // [{'a': 1}, {'b': 2}].arrKeys(); // ['a', 'b']
  }

  // The arrValues method returns the values of an array of objects:
  List arrValues() {
    List values = [];
    for (var i = 0; i < length; i++) {
      values.add(this[i].values.toList()[0]);
    }
    return values;

    // example:
    // [{'a': 1}, {'b': 2}].arrValues(); // [1, 2]
  }

  // The arrPluck method returns the values of an array of objects:
  List arrPluck(String key) {
    List values = [];
    for (var i = 0; i < length; i++) {
      values.add(this[i][key]);
    }
    return values;

    // example:
    // [{'a': 1}, {'b': 2}].arrPluck('a'); // [1]
  }

  // The arrWhereKey method filters the array of objects by a specific key:
  Map arrWhereKey(dynamic key) {
    Map arr = {};
    for (var i = 0; i < length; i++) {
      if (this[i].keys.toList()[0] == key) {
        arr[this[i].keys.toList()[0]] = this[i].values.toList()[0];
      }
    }
    return arr;

    // example:
    // [{'a': 1}, {'b': 2}].arrWhereKey('a'); // {'a': 1}
  }

  // The arrWhereValue method filters the array of objects by a specific value:
  Map arrWhereValue(dynamic value) {
    Map arr = {};
    for (var i = 0; i < length; i++) {
      if (this[i].values.toList()[0] == value) {
        arr[this[i].keys.toList()[0]] = this[i].values.toList()[0];
      }
    }
    return arr;

    // example:
    // [{'a': 1}, {'b': 2}].arrWhereValue(1); // {'a': 1}
  }

  // The arrWhereId method filters the array of objects where the id property is equal to a specific id:
  Map arrWhereId(dynamic id) {
    Map arr = {};
    for (var i = 0; i < length; i++) {
      if (this[i]['id'] == id) {
        arr = this[i];
      }
    }
    return arr;

    // example:
    // [{'id': 1, 'name': 'John'}, {'id': 2, 'name': 'Jane'}].arrWhereId(1); // {'id': 1, 'name': 'John'}
  }

  // The arrUniq method returns an array of unique values:
  List arrUniq() {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (!arr.contains(this[i])) {
        arr.add(this[i]);
      }
    }
    return arr;

    // example:
    // [1, 2, 3, 1, 4, 5].arrUniq(); // [1, 2, 3, 4, 5]
  }

  // The arrUniqBy method returns an array of unique values:
  List arrUniqBy(dynamic key) {
    List arr = [];
    for (var i = 0; i < length; i++) {
      if (!arr.contains(this[i][key])) {
        arr.add(this[i][key]);
      }
    }
    return arr;

    // example:
    // [{'a': 1}, {'a': 2}, {'a': 1}].arrUniqBy('a'); // [1, 2]
  }
}
