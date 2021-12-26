part of '../horus.dart';

extension HorusString on String {
// **************************************************************************
// Number methods checkers (returns true or false)
// case sensitive
// **************************************************************************

// The strContains method determines if the given string contains the given value.
// This method is case sensitive:
  bool strContains(String value) {
    return contains(value);

    // example:
    // strContains('Hello World', 'World'); // returns true
    // strContains('Hello World', 'world'); // returns false
  }

// You may also pass an array of values to determine
// if the given string contains any of the values in the array:
  bool strContainsAny(List<String> values) {
    return values.any((value) => contains(value));

    // example:
    // strContainsAny('Hello World', ['World', 'hello']); // returns true
    // strContainsAny('Hello World', ['world', 'hello']); // returns false
  }

// you may also check if the given string contains all of the values in the array:
  bool strContainsAll(List<String> values) {
    return values.every((value) => contains(value));

    // example:
    // strContainsAll('Hello World', ['World', 'hello']); // returns true
    // strContainsAll('Hello World', ['hello', 'hello']); // returns false
  }

// The strEndsWith method determines if the given string ends with the given value:
  bool strEndsWith(String value) {
    return endsWith(value);

    // example:
    // strEndsWith('Hello World', 'World'); // returns true
    // strEndsWith('Hello World', 'world'); // returns false
    // strEndsWith('Hello World', 'Hello'); // returns false
  }

// You may also pass an array of values to determine if the given string
// ends with any of the values in the array:
  bool strEndsWithAny(List<String> values) {
    return values.any((value) => endsWith(value));

    // example:
    // strEndsWithAny('Hello World', ['World', 'hello']); // returns true
    // strEndsWithAny('Hello World', ['world', 'hello']); // returns false
    // strEndsWithAny('Hello World', ['Hello', 'hello']); // returns false
  }

// The strEquals method determines if the given string equals the given value:
  bool strEquals(String value) {
    return this == value;

    // example:
    // strEquals('Hello World', 'Hello World'); // returns true
    // strEquals('Hello World', 'Hello'); // returns false
    // strEquals('Hello World', 'hello world'); // returns false
  }

// the strStartsWith method determines if the given string starts with the given value:
  bool strStartsWith(String value) {
    return startsWith(value);

    // example:
    // strStartsWith('Hello World', 'Hello'); // returns true
    // strStartsWith('Hello World', 'hello'); // returns false
    // strStartsWith('Hello World', 'World'); // returns false
  }

// You may also pass an array of values to determine if the given string starts with any of the values in the array:
  bool strStartsWithAny(List<String> values) {
    return values.any((value) => startsWith(value));

    // example:
    // strStartsWithAny('Hello World', ['Hello', 'world']); // returns true
    // strStartsWithAny('Hello World', ['hello', 'world']); // returns false
    // strStartsWithAny('Hello World', ['World', 'world']); // returns false
  }

// the strEquals method determines if the given string equals the given value:
  bool srtEqual(String value) {
    return this == value;

    // example:
    // strEquals('Hello World', 'Hello World'); // returns true
    // strEquals('Hello World', 'Hello'); // returns false
  }

// you may also check if the given string equals any of the values in the array:
  bool strEqualsAny(List<String> values) {
    return values.any((value) => this == value);

    // example:
    // strEqualsAny('Hello World', ['Hello', 'world']); // returns false
    // strEqualsAny('Hello World', ['Hello World' , 'world']); // returns true
  }

// The strIs method determines if a given string matches a given pattern.
// Asterisks may be used as wildcard values:

  bool strIs(String pattern) {
    return RegExp(pattern).hasMatch(this);

    // example:
    // strIs('foo*', 'foobar'); // returns true
    // strIs('foo*', 'foo'); // returns true
    // strIs('foo*', 'bar'); // returns false
  }

// The strIsAscii method determines if a given string is 7 bit ASCII:
  bool strIsAscii() {
    return RegExp(r'^[\x00-\x7F]*$').hasMatch(this);

    // example:
    // strIsAscii('Mohamed'); // returns true
    // strIsAscii('ü'); // returns false
  }

// The strIsUuid method determines if the given string is a valid UUID:
  bool strIsUuid() {
    return RegExp(
            r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')
        .hasMatch(this);

    // example:
    // strIsUuid('12345678-1234-1234-1234-123456789012'); // returns true
    // strIsUuid('flutter'); // returns false
  }

// **************************************************************************
// Number methods to manipulate the given value ( String )
// **************************************************************************

// The strFinish method adds a single instance of the given value
// to a string if it does not already end with that value:
  String strFinish(String value) {
    return endsWith(value) ? this : '$this $value';

    // example:
    // strFinish('Hello World', '!'); // returns 'Hello World!'
    // strFinish('Hello World', '!'); // returns 'Hello World!'
  }

// The srtStart method adds a single instance of the given value
// to a string if it does not already start with that value:
  String strStart(String value) {
    if (!startsWith(value)) {
      this == value + this;
    }
    return this;

    // example:
    // strStart('Hello World', '!'); // returns '!Hello World'
  }

// The strHeadline method will convert strings
// delimited by casing, hyphens, or underscores into a space delimited
// string with each word's first letter capitalized:

  String strHeadline() {
    return replaceAll(RegExp(r'[-_.]'), ' ').split(' ').map((word) {
      return word[0].toUpperCase() + word.substring(1);
    }).join(' ');

    // example:
    // strHeadline('hello_world'); // returns 'Hello World'
    // strHeadline('hello-world'); // returns 'Hello World'
    // strHeadline('hello_world'); // returns 'Hello World'
    // strHeadline('hello.world'); // returns 'Hello World'
  }

// The strUid method will generate a unique identifier:
  String strUid(String prefix) {
    return prefix + DateTime.now().millisecondsSinceEpoch.toString();

    // example:
    // strUid('foo_'); // returns 'foo_1589788888888'
  }

// The strKebab method converts the given string to kebab-case:
  String strKebab() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '-' + match.group(0).toString().toLowerCase();
    });

    // example:
    // strKebab('helloWorld'); // returns 'hello-world'
  }

// The strLimit method truncates the given string to the specified length:
// also You may pass a third argument to the method to change the string
// that will be appended to the end of the truncated string:
  String strLimit(int limit, [String ending = '...']) {
    if (length > limit) {
      return substring(0, limit) + ending;
    }
    return this;

    // example:
    // strLimit('Hello World', 5); // returns 'Hello...'
    // strLimit('Hello World', 5, '!'); // returns 'Hello!'
  }

// The repeet method repeats the given string n times:
  String strRepeat(int n) {
    return this * n;

    // example:
    // strRepeat('Hello', 3); // returns 'HelloHelloHello'
  }

// The strMask method masks a portion of a string with a repeated character,
// and may be used to obfuscate segments of strings such as email addresses and phone numbers:
// strat by default is the start index of the string to be masked
// end by default is the end index of the string to be masked
// mask is the character to be used for masking the string (default is '*')
  String strMask([int start = 0, int? end, String mask = '*']) {
    final int _end = end ?? length;

    return substring(0, start) +
        substring(start, _end).replaceAll(RegExp(r'.'), mask) +
        substring(_end);

    // example:
    // strMask('Hello World', 5, 10); // returns 'Hello*****World'
    // strMask('Hello World', 5); // returns 'Hello*****World'
    // strMask('Hello World', 0,  10); // returns 'Hello World*****'
  }

// The strPlural method converts a singular word string to its plural form.
// This function currently only supports the English language:
  String strPlural() {
    if (endsWith('y')) {
      return substring(0, length - 1) + 'ies';
    }
    if (endsWith('s')) {
      return this + 'es';
    }
    return this + 's';

    // example:
    // strPlural('apple'); // returns 'apples'
    // strPlural('apples'); // returns 'apples'
    // strPlural('bus'); // returns 'buses'
  }

// The strSingular method converts a string to its singular form. This function currently only supports the English language:
  String strSingular() {
    if (endsWith('ies')) {
      return substring(0, length - 3) + 'y';
    }
    if (endsWith('es')) {
      return substring(0, length - 2);
    }
    if (endsWith('s')) {
      return substring(0, length - 1);
    }
    return this;

    // example:
    // strSingular('apples'); // returns 'apple'
    // strSingular('apples'); // returns 'apple'
    // strSingular('buses'); // returns 'bus'
  }

// The strRandom method generates a random string of the specified length.
// The characters used are a-z, A-Z, 0-9, and the symbols !@#$%^&*()-_=+|[]{};:<>,./?
// The default length is 16 characters , but you may pass a second argument to specify the length:
// no spaces are added to the string
  String strRandom([int length = 10]) {
    String _chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#%^&*()-_=+|[]{};:<>,./?';
    final Random _random = Random();
    final StringBuffer _buffer = StringBuffer();

    for (int i = 0; i < length; i++) {
      _buffer.write(_chars[_random.nextInt(_chars.length)]);
    }
    return _buffer.toString();

    // example:
    // strRandom(); // returns 'a1B2c3D4e5F6g7H8i9J0k1L2m3N4o5P6q7R8s9T0u1V2w3X4y5Z6'
    // strRandom(5); // returns 'a1B2c3D4e5'
  }

// The strRemove method removes the given value from the string:
  String strRemove(String value) {
    return toLowerCase().replaceAll(RegExp(value.toLowerCase()), '');

    // example:
    // strRemove('Hello World', 'Hello'); // returns ' World'
  }

// The strReplace method replaces a given string within the string:
  String strReplace(String search, String replacement) {
    return replaceAll(RegExp(search), replacement);

    // example:
    // strReplace('Hello World', 'Hello', 'Hi'); // returns 'Hi World'
    // strReplace('flutter v1', 'v1', 'v2'); // returns 'flutter v2'
  }

// The strReplaceArray method replaces a given value in the string sequentially using an array:
  String strReplaceArray(List<String> search, List<String> replacement) {
    for (int i = 0; i < search.length; i++) {
      this ==
          toLowerCase().replaceAll(
              RegExp(search[i].toLowerCase()), replacement[i].toLowerCase());
    }
    return this;

    // example:
    // strReplaceArray('Hello World', ['Hello', 'World'], ['Hi', 'Universe']); // returns 'Hi Universe'
  }

// The strReplaceFirst method replaces the first occurrence of a given value in a string:
  String strReplaceFirst(String search, String replacement) {
    return replaceFirst(RegExp(search), replacement);

    // example:
    // strReplaceFirst('Hello World', 'Hello', 'Hi'); // returns 'Hi World'
    // strReplaceFirst('flutter v1', 'v1', 'v2'); // returns 'flutter v2'
  }

// The strReverse method reverses the given string:
  String strReverse() {
    return split('').reversed.join();

    // example:
    // strReverse('Hello World'); // returns 'dlroW olleH'
  }

// The strSlug method generates a URL friendly "slug" from the given string:
  String strSlug() {
    return toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
        .replaceAll(RegExp(r'-+'), '-')
        .replaceAll(RegExp(r'^-+'), '')
        .replaceAll(RegExp(r'-+$'), '');

    // example:
    // strSlug('Hello World'); // returns 'hello-world'
  }

// The strSnake method converts the given string to snake_case:
  String strSnake() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (Match m) {
      return '_' + m.group(0)!.toLowerCase();
    });

    // example:
    // strSnake('Hello World'); // returns 'hello_world'
  }

// The strStudly method converts the given string to StudlyCase:
  String strStudly() {
    return replaceAllMapped(RegExp(r'[_-]+'), (Match m) {
      return m.group(0)!.toUpperCase();
    });

    // example:
    // strStudly('hello_world'); // returns 'HelloWorld'
  }

// The strSubthismethod returns the portion of string specified by the start and length parameters:
  String strSubstr(int start, [int? length]) {
    final int _length = length ?? length! - start;
    return substring(start, start + _length);

    // example:
    // strSubstr('Hello World', 0, 5); // returns 'Hello'
    // strSubstr('Hello World', 5); // returns 'World'
  }

// The strSubstrCount method returns the number of occurrences of a given value in the given string:
  int strSubstrCount(String search) {
    return toLowerCase().split(search.toLowerCase()).length - 1;

    // example:
    // strSubstrCount('Hello World', 'o'); // returns 2
    // strSubstrCount('Hello World', 'l'); // returns 3
  }

// The strTitle method converts the given string to Title Case (all words capitalized) and spaces:
  String strTitle() {
    return replaceAllMapped(RegExp(r'\b\w'), (Match m) {
      return m.group(0)!.toUpperCase();
    });

    // example:
    // strTitle('hello world'); // returns 'Hello World'
  }

// The strUcfirst method returns the given string with the first character capitalized:
  String strUcfirst() {
    return substring(0, 1).toUpperCase() + substring(1);

    // example:
    // strUcfirst('hello world'); // returns 'Hello world'
  }

// The strUpper method converts the given string to uppercase:
  String strUpper() {
    return toUpperCase();

    // example:
    // strUpper('hello world'); // returns 'HELLO WORLD'
  }

// The strWordCount method returns the number of words that a string contains:
  int strWordCount() {
    return split(' ').length;

    // example:
    // strWordCount('Hello World'); // returns 2
  }

// The strWords method limits the number of words in a string.
// An additional string may be passed to this method via its third argument
// to specify which string should be appended to the end of the truncated string:
  String strWords(int limit, [String? end]) {
    final List<String> _words = split(' ');
    final String _end = end ?? '...';

    if (_words.length <= limit) {
      return this;
    }

    return _words.sublist(0, limit).join(' ') + _end;

    // example:
    // strWords('Hello World', 2); // returns 'Hello...'
    // strWords('Hello World', 2, '!'); // returns 'Hello!'
  }
}
