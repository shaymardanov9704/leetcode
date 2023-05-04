///String to Integer (atoi)
class Solution8 {
  int myAtoi(String s) {
    var list = s.split("");
    String k = "";

    for (int i = 0; i < list.length; i++) {
      if (" -+1234567890 ".contains(list[i])) {
        if (list[i] == "+") continue;
        k = k + list[i];
      } else {
        break;
      }
    }
    if (k.isEmpty) return 0;
    if (int.parse(k).bitLength > 31) {
      if (int.parse(k) > 0) {
        return 2147483648;
      } else {
        return -2147483648;
      }
    }
    return int.parse(k);
  }
}
