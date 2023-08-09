///Multiply Strings

class Solution43 {
  String multiply(String num1, String num2) {
    return "${BigInt.parse(num1)*BigInt.parse(num2)}";
  }
}
