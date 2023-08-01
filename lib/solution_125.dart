///Valid Palindrome

class Solution {
  bool isPalindrome(String s) {
    bool result = false;
    s = s.replaceAll(RegExp('[^A-Za-z0-9]'), '').toLowerCase();
    print(s);
    if (s.isEmpty || s.length == 1) return true;
    for (int i = 0; i < s.length ~/ 2; i++) {
      if (s[i] == s[s.length - i - 1]) {
        result = true;
      } else {
        result = false;
        break;
      }
    }
    return result;
  }
}
