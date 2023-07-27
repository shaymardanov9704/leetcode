///Keyboard Row

class Solution500 {
  List<String> findWords(List<String> words) {
    List<String> result = [];
    final firstRow = "qwertyuiop";
    final secondRow = "asdfghjkl";
    final thirdRow = "zxcvbnm";

    for (int i = 0; i < words.length; i++) {
      final array = words[i].toLowerCase().split("");
      if (array.every((element) => firstRow.contains(element))) {
        result.add(words[i]);
      }
      if (array.every((element) => secondRow.contains(element))) {
        result.add(words[i]);
      }
      if (array.every((element) => thirdRow.contains(element))) {
        result.add(words[i]);
      }
    }
    return result;
  }
}
