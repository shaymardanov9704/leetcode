class Solution3 {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) {
      return 0;
    }
    Set<String> subString = {};
    int longestSubString = 1;
    for (int i = 0; i < s.length; i++) {
      print(subString);
      while (subString.contains(s[i])) {
        subString.remove(subString.first);
      }
      subString.add(s[i]);
      print(subString);
      if (longestSubString < subString.length) {
        longestSubString = subString.length;
      }
      print(longestSubString);
    }
    return longestSubString;
  }

// int lengthOfLongestSubstring(String s) {
//   List<int> substrings = [];
//   for (int i = 1; i < s.length - 1; i++) {
//     isUnical(s.substring(i)) ? substrings.add(s.substring(i).length) : null;
//   }
//   substrings.sort();
//   print(substrings);
//   return 1;
// }
//
// bool isUnical(String str) {
//   bool result = false;
//   Set<String> b = str.split("").toSet();
//   final s = b.join();
//   if (str.contains(s)) {
//     return true;
//   } else {
//     return false;
//   }
//
// }
}
