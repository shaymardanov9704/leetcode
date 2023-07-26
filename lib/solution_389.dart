///Find the Difference

class Solution {
  String findTheDifferenceV1(String s, String t) {
    Map<String, int> count = {};
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      count[char] = (count[char] ?? 0) + 1;
    }
    for (int i = 0; i < t.length; i++) {
      String char = t[i];
      count[char] = (count[char] ?? 0) - 1;
      if (count[char] == -1) {
        return char;
      }
    }
    return '';
  }

  String findTheDifferenceV2(String s, String t) {
    String minStr = s.length > t.length ? t : s;
    String maxStr = s.length > t.length ? s : t;
    int i = 0;
    while (minStr.isNotEmpty) {
      if (minStr.contains(maxStr[i])) {
        minStr = minStr.replaceFirst(maxStr[i], '');
        maxStr = maxStr.replaceFirst(maxStr[i], '');
      } else {
        i++;
      }
    }
    return maxStr;
  }
}
