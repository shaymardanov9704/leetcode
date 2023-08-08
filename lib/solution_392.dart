///Is Subsequence

class Solution {
  bool isSubsequence(String s, String t) {
    if(s.length > t.length || s.isEmpty) {
      return s.isEmpty;
    }
    for(int i = 0; i < s.length; i++) {
      if(t.contains(s[i])) {
        t = t.substring(t.indexOf(s[i]) + 1);
      } else {
        return false;
      }
    }
    return true;
  }
}
