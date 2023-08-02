///Reverse String

class Solution344 {
  void reverseString(List<String> s) {
    for (int i = 0; i < s.length ~/ 2; i++) {
      var temp = s[i];
      s[i] = s[s.length - i - 1];
      s[s.length - i - 1] = temp;
    }
  }

  ///BETTER WAY
  void reverseStringV2(List<String> s) {
    int left = 0,
        right =
            s.length - 1; //left is point on first element, right is on the last
    while (left < right) {
      String tmp = s[left]; //var is for storing value before changing
      s[left] = s[right];
      s[right] = tmp;
      left++;
      right--;
    }
  }
}
