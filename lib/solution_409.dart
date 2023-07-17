///Longest Palindrome

class Solution409 {
  int longestPalindromeV1(String s) {
    if (s.length == 1) return 1;
    if (s.length == 2) return 2;

    int result = 1;
    var array = s.split("");
    array.sort();
    for (int i = 0; i < array.length - 1; i += 2) {
      if (array[i] == array[i + 1]) {
        result += 2;
      }
    }
    return result;
  }

  int longestPalindromeV2(String s) {
    Map<String, int> charCounts = {};
    int maxLength = 0;
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      charCounts[char] = (charCounts[char] ?? 0) + 1;
      print("$char => ${charCounts[char]}");
      if (charCounts[char]! % 2 == 0) {
        maxLength += 2;
        charCounts[char] = 0;
      }
    }
    return maxLength + (charCounts.values.any((count) => count % 2 == 1) ? 1 : 0);
  }
}
