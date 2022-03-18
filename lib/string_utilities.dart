class StringUtilities {
  List<num> findNumsIn(String string) {
    final List<String> words = string.split(" ");
    List<num> numsList = [];

    for (var word in words) {
      num? number = int.tryParse(word);
      if (number != null) {
        numsList.add(number);
      }
    }

    return numsList;
  }

  Map<String, int> findStringsIn(List<String> stringList) {
    final map = <String, int>{};
    for (var word in stringList) {
      map[word] = map[word] != null ? map[word]! + 1 : 1;
    }

    return map;
  }

  Set<int> findNumNamesIn(List<String> stringList) {
    const intNames = {
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };

    final set = <int>{};
    for (var word in stringList) {
      if (intNames[word] != null) {
        set.add(intNames[word]!);
      }
    }

    return set;
  }
}
