///Remove Trailing Zeros From a String

class Solution2710 {
  String removeTrailingZeros(String num) {
    while (num[num.length - 1] == "0") {
      num = num.substring(0, num.length - 1);
    }
    return num;
  }
}
