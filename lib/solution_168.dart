/// Excel Sheet Column Title

class Solution168 {
  String convertToTitle(int n) {
    return n == 0
        ? ""
        : convertToTitle((n - 1) ~/ 26) +
        String.fromCharCode((n - 1) % 26 + 65);
  }
}
