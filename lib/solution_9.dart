///Palindrome Number
class Solution9 {
  bool isPalindrome(int x) {
    final str = x.toString();
    for (int i = 0; i < str.length / 2; i++) {
      if (str[i] != str[str.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}
