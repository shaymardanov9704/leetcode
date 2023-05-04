import 'dart:math';

/// Longest Common Prefix
class Solution14 {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";
    String prefix = strs[0];

    for (var i = 0; i < strs.length; i++) {
      String c = strs[i];
      if (c.isEmpty || prefix == "") return "";

      prefix = prefix.substring(0, min(prefix.length, c.length));
      for (var j = 0; j < c.length && j < prefix.length; j++) {
        if (c[j] != prefix[j]) {
          prefix = prefix.substring(0, j);
          break;
        }
      }
    }
    return prefix;
  }
}
