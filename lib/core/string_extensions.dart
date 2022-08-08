/// [StringUtil] is used to check whether the value of string is null or empty
extension StringUtil on String {
  bool get isNullOrEmpty {
    return this == null || isEmpty;
  }
}
/// [SameCharacterUtil] is used to check whether the value is having same character or not
/// For example gg will return true gh will return false
extension SameCharacterUtil on String {
  bool get hasSameCharacters {
    if (isNullOrEmpty) {
      return false;
    }

    if (this.length > 1) {
      var b = this[0].toLowerCase();
      for (var i = 1; i < this.length; i++) {
        var c = this[i].toLowerCase();
        if (c != b) {
          return false;
        }
      }
    }
    return true;
  }
}
/// [OnlyLatinUtil] remove unnecessary characters and numbers and returns only alphabet
extension OnlyLatinUtil on String {
  String? get onlyLatin {
    if (isNullOrEmpty) {
      return this;
    }
    var regex = RegExp(r'([^a-zA-Z\s]+)');
    return replaceAll(regex, '');
  }
}
/// [CountWordsUtils] is used to count words in a sentence
extension CountWordsUtils on String {
  int get countWords {
    if (isNullOrEmpty) {
      return 0;
    }
    var words = this.trim().split(RegExp(r'(\s+)'));
    var filteredWords = words.where((e) => e.onlyLatin!.isNotEmpty);
    return filteredWords.length;
  }
}
/// [CapitalizeStringExtensions] is used to convert the first letter of a string to upper case
extension CapitalizeStringExtensions on String {
  String get capitalizeFirstLetter {
    if (isNullOrEmpty) {
      return this;
    } else if (length > 1) {
      return '${this[0].toUpperCase()}${substring(1)}';
    } else {
      return this[0].toUpperCase();
    }
  }
}
/// [IsNumberExtension] is used to check whether a value in number or not and returns a boolean value
extension IsNumberExtension on String {
  bool get isNumber {
    if (isNullOrEmpty) {
      return false;
    }
    return num.tryParse(this) != null;
  }
}
/// [IsEmailExtension] is used to check whether the string is email or not
extension IsEmailExtension on String {
  bool get isMail {
    if (isNullOrEmpty) {
      return false;
    }
    var regex = RegExp(r"(^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$)");
    return regex.hasMatch(this);
  }
}
/// [ToCamelCase] is used to convert a sentence into camel case letters.
extension ToCamelCase on String {
  String? get toCamelCase {
    if (isNullOrEmpty) {
      return this;
    }

    var words = trim().split(RegExp(r'(\s+)'));
    var result = words[0].toLowerCase();
    for (var i = 1; i < words.length; i++) {
      result += words[i].substring(0, 1).toUpperCase() +
          words[i].substring(1).toLowerCase();
    }
    return result;
  }
}
/// [RemoveLetters] is used to remove only letters from a string
extension RemoveLetters on String {
  String? get removeLetters {
    if (isNullOrEmpty) {
      return this;
    }
    var regex = RegExp(r'([a-zA-Z]+)');
    return replaceAll(regex, '');
  }
}
/// [ReversedString] is used to return reversed value of a string
extension ReversedString on String {
  String? get reverse {
    if (isNullOrEmpty) {
      return this;
    }

    var letters = split('').toList().reversed;
    return letters.reduce((current, next) => current + next);
  }
}
/// [IsUrl] extension is used to check whether the string is an url or not
extension IsUrl on String {
  bool get isUrl {
    if (isNullOrEmpty) {
      return false;
    }
    var regex = RegExp(
        r'[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)');
    return regex.hasMatch(this);
  }
}

