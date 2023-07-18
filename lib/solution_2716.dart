///Minimize String Length

class Solution2716 {
  int minimizedStringLength(String s) {
    List array = s.split("").toSet().toList();
    return array.length;
  }
}
