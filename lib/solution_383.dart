///Ransom Note

class Solution383 {
  bool canConstruct(String ransomNote, String magazine) {
    for (int i = 0; i < ransomNote.length; i++) {
      if (magazine.contains(ransomNote[i])) {
        magazine = magazine.replaceFirst(ransomNote[i], "");
      } else {
        return false;
      }
    }
    return true;
  }
}
