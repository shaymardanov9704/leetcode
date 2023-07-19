/// Minimum String Length After Removing Substrings
class Solution2696 {
  int minLength(String s) {
    while (s.contains("AB") || s.contains("CD")) {
      s.replaceAll("AB", "");
      s.replaceAll("CD", "");
    }
    return s.length;
  }
}
