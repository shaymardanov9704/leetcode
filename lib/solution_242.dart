///Valid Anagram

class Solution242 {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    List sList = s.split("")..sort();
    List tList = t.split("")..sort();
    if (sList.join() == tList.join()) {
      return true;
    } else {
      return false;
    }
  }
}
