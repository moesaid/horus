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
}
