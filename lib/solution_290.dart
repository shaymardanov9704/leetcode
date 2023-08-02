///Word Pattern

class Solution {
  bool wordPattern(String pattern, String s) {
    List listP = pattern.split("");
    List listS = s.split(" ");
    Map<String, String> map = {};
    if (listP.length != listS.length) return false;
    for (int i = 0; i < listP.length; i++) {
      final key = listP[i];
      final value = listS[i];
      if (!map.containsKey(key)) {
        if (map.containsValue(value)) return false;
        map[key] = value;
      }
      if (map[key] != value) return false;
    }
    return true;
  }
}
