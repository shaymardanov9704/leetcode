/// Reverse Integer

class Solution7b {
  int reverse(int x) {
    int returnedValue = 0;
    final int n = x.toString().length;
    final isMinus = x < 0;
    isMinus ? x = x * (-1) : x = x;
    for (int i = 0; i < n; i++) {
      returnedValue = returnedValue * 10 + x % 10;
      if (x < 10) {
        break;
      }
      x = x ~/ 10;
    }
    isMinus
        ? returnedValue = returnedValue * (-1)
        : returnedValue = returnedValue;
    if (returnedValue.bitLength > 31) return 0;
    return returnedValue;
  }
}

class Solution7a {
  int reverse(int x) {
    int s = int.parse(
      x.toString().split("").reversed.join().replaceAll("-", ""),
    );
    x < 0 ? s = s * (-1) : s = s;
    if (s.bitLength < 32) return s;
    return 0;
  }
}
