///Add Strings

class Solution415 {
  ///very simple and fast
  String addStrings(String num1, String num2) {
    return (BigInt.tryParse(num1)! + BigInt.tryParse(num2)!).toString();
  }

  ///Beats 100%
  String addStrings_(String num1, String num2) {
    String result = "";
    int i = num1.length - 1;
    int j = num2.length - 1;
    int temp = 0;

    while (i >= 0 || j >= 0) {
      int digit1 = i >= 0 ? int.parse(num1[i]) : 0;
      int digit2 = j >= 0 ? int.parse(num2[j]) : 0;
      int tempSum = digit1 + digit2 + temp;
      temp = tempSum ~/ 10;
      result = "${tempSum % 10}$result";
      i--;
      j--;
    }
    if (temp > 0) {
      result = "$temp$result";
    }
    return result;
  }
}
