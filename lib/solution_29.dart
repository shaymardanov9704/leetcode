/// Divide Two Integers

class Solution29 {
  int divide(int dividend, int divisor) {
    List<String> list = (dividend / divisor).toString().split("");
    Iterable<String> d = list.takeWhile((value) => value != ".");
    if (dividend / divisor > 2147483647) {
      return 2147483647;
    } else if (dividend / divisor < -2147483648) {
      return -2147483648;
    }
    return int.parse(d.join());
  }
}
