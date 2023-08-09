///Split With Minimum Sum

class Solution2578 {
  int splitNum(int num) {
    String num1 = '', num2 = '';
    var l = num.toString().split("");
    l.sort();

    for (int i = 0; i < l.length; i++) {
      if (i % 2 == 0) {
        num1 += l[i];
      } else {
        num2 += l[i];
      }
    }
    return (int.parse(num1) + int.parse(num2));
  }
}
