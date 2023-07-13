///Regular Expression Matching

class Solution10 {
  bool isMatch(String s, String p) {
    return match(s, p, 0, 0);
  }

  bool match(String s, String p, int s1, int s2) {
    if (s.length == s1 && p.length == s2) {
      return true;
    }
    if (s2 == p.length) {
      return false;
    }
    if (s2 == p.length - 1 || p[s2 + 1] != '*') {
      if (s1 < s.length && (p[s2] == '.' || s[s1] == p[s2])) {
        return match(s, p, s1 + 1, s2 + 1);
      } else {
        return false;
      }
    } else {
      if (match(s, p, s1, s2 + 2)) {
        return true;
      }
      if (s1 < s.length &&
          ((p[s2] == '.' || s[s1] == p[s2]) && match(s, p, s1 + 1, s2))) {
        return true;
      }
    }
    return false;
  }
}
