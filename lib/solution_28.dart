/// Find the Index of the First Occurrence in a String
class Solution28 {
  int strStr(String haystack, String needle) {
    int c = -1;
    for (int i = 0; i < haystack.length - needle.length + 1; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        c = i;
        break;
      }
    }
    return c;
  }
}
