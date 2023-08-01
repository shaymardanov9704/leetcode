///Add Binary

class Solution67 {
  String addBinary(String a, String b) {
    String result = "";
    int i = a.length - 1;
    int j = b.length - 1;
    int temp = 0;
    while (i >= 0 || j >= 0 || temp > 0) {
      if (i >= 0) temp += int.parse(a[i--]);
      if (j >= 0) temp += int.parse(b[j--]);
      result = (temp % 2).toString() + result;
      temp = temp ~/ 2;
    }
    return result;
  }
}
