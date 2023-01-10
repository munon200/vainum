class StringUtils {
  static String reverse(String value) {
    return String.fromCharCodes(value.runes.toList().reversed);
  }

  static bool compare(String? valueOne, String? valueTwo) {
    return valueOne == valueTwo;
  }

  static bool compareValue(String? valueOne, String? valueTwo) {
    return valueOne?.toUpperCase() == valueTwo?.toUpperCase();
  }

  static bool isNullOrEmpty(String? value) {
    return value == null ? true : value.isEmpty;
  }

  static bool isNotNullOrEmpty(String? value) {
    return value == null ? false : value.isNotEmpty;
  }

  static bool isLowerCase(String? value) {
    return value == value?.toLowerCase();
  }

  static bool isUpperCase(String? value) {
    return value == value?.toUpperCase();
  }

  static bool isPalindrome(String? value) {
    if (value != null) {
      for (var i = 0; i < value.length / 2; i++) {
        if (value[i] != value[value.length - 1 - i]) {
          return false;
        }
      }
    }
    return true;
  }

  static bool isDigit(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    for (var r in value.runes) {
      if (r ^ 0x30 > 9) {
        return false;
      }
    }
    return true;
  }
}
