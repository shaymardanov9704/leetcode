///Prime Palindrome

class Solution866 {
  bool isPrime(int n) {
    if (n == 1) return false;
    for (int i = 2; i < n; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  int primePalindrome(int n) {
    if (8 <= n && n <= 11) return 11;
    for (int i = 1; i < 100000; i++) {
      String s = i.toString(), r = s.split('').reversed.join('');
      int result = int.parse('$s${r.substring(1)}');
      if (result >= n && isPrime(result)) return result;
    }
    return -1;
  }
}
