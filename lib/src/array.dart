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
}
