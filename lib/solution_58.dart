class Solution58 {
  int lengthOfLastWord(String s) {
    while (s.substring(s.length - 1) == " ") {
      s = s.substring(0, s.lastIndexOf(" "));
    }
    String word = s.substring(s.lastIndexOf(" ") + 1);
    return word.length;
  }
}

///Length of Last Word
///Beats 89%
