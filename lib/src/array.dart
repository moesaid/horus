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
  }

  // The arrLast method returns the last element of the list.
  dynamic arrLast() {
    return arrAccessible() ? this[length - 1] : null;
  }

  // The arrRandom method returns a random element of the list.
  dynamic arrRandom() {
    return arrAccessible() ? this[Random().nextInt(length)] : null;
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
  }

  // The arrAdd method adds an item to the end of the list:
  List arrAdd(dynamic item) {
    add(item);
    return this;
  }

  // The arrAddAll method adds all items in the list to the end of the list:
  List arrAddAll(List items) {
    for (var i = 0; i < items.length; i++) {
      add(items[i]);
    }
    return this;
  }

  // The arrContains method determines if the list contains a specific item:
  bool arrContains(dynamic item) {
    return contains(item);
  }

  // The arrContainsAll method determines if the list contains all items in a specific list:
  bool arrContainsAll(List items) {
    for (var i = 0; i < items.length; i++) {
      if (!contains(items[i])) {
        return false;
      }
    }
    return true;
  }

  // The arrSum method sum the values of an array:
  num arrSum() {
    num sum = 0;
    for (var i = 0; i < length; i++) {
      sum += this[i];
    }
    return sum;
  }

  // The arrAvg method returns the average value of an array:
  num arrAvg() {
    return arrSum() / length;
  }
}
