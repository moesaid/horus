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

  // The arrContainsValue method determines if the array of key / value pair contains the given value:
  bool arrContainsValue(value) {
    if (this is List) {
      for (var i = 0; i < length; i++) {
        if (this[i][1] == value) return true;
      }
    }
    return false;

    // example:
    // var arr = [ [ 'key', 'value' ], [ 'key2', 'value2' ] ];
    // arrContainsValue( 'value' ); // true
  }

  // The arrAdd method adds a value to the end of the list.
  List arrAdd(value) {
    if (this is List) {
      add(value);
    }
    return this;
  }

  // The arrAddKeyValue method adds a given key / value pair to an array if the given key doesn't already exist in the array
  // or is set to null:

}
