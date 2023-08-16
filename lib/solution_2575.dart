///Find the Divisibility Array of a String

class Solution2575 {
  List<int> divisibilityArray(String word, int m) {
    List<int> result = [];
    int remainder = 0;
    for (int i = 0; i < word.length; i++) {
      int digit = int.parse(word[i]);
      remainder = ((remainder * 10) + digit) % m;
      if (remainder == 0) {
        result.add(1);
      } else {
        result.add(0);
      }
    }
    return result;
  }
}
