///Longest Palindromic Substring

///From LeetCode Solutions
class Solution {
  String longestPalindrome(String s) {
    if (s == "" || s.length < 2) return s;

    var longestPalindrome = s.substring(0, 1);

    for (int i = 0; i < s.length; i++) {
      for (var maybeLongest in [expand(s, i, i), expand(s, i, i + 1)]) {
        {
          if (maybeLongest.length > longestPalindrome.length) {
            longestPalindrome = maybeLongest;
          }
        }
      }
    }
    return longestPalindrome;
  }

  String expand(String s, int begin, int end) {
    while (begin >= 0 && end <= s.length - 1 && s[begin] == s[end]) {
      begin--;
      end++;
    }
    var r = s.substring(begin + 1, end);
    return r;
  }
}

///My Solution
class Solution5 {
  String longestPalindrome(String s) {
    String palindrome = s[0];
    for (int i = 0; i < s.length - 1; i++) {
      for (int j = i + 1; j < s.length; j++) {
        String p = s.substring(i, j + 1).split("").reversed.join();
        if (p == s.substring(i, j + 1) && p.length > palindrome.length) {
          palindrome = p;
        }
      }
    }
    return palindrome;
  }
}
