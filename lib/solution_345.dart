///Reverse Vowels of a String

class Solution {
  ///Better Way
  String reverseVowels(String s) {
    var vowels = const ['a', 'e', 'i', 'o', 'u'];
    List<String> workingLetters = s.split('');
    int left = 0, right = s.length - 1;
    while (left < right) {
      if (!vowels.contains(s[left].toLowerCase())) {
        left++;
      } else if (!vowels.contains(s[right].toLowerCase())) {
        right--;
      } else {
        String tmp = workingLetters[left];
        workingLetters[left] = s[right];
        workingLetters[right] = tmp;
        left++;
        right--;
      }
    }
    return workingLetters.join();
  }

  ///Bad way
  String reverseVowelsV2(String s) {
    String result = "";
    String temp = "";
    for (int i = 0; i < s.length; i++) {
      if ("aeiouAEIOU".contains(s[i])) {
        temp = temp + s[i];
      }
    }

    for (int i = 0; i < s.length; i++) {
      if (!"aeiouAEIOU".contains(s[i])) {
        result = result + s[i];
      } else {
        result = result + temp[temp.length - 1];
        temp = temp.substring(0, temp.length - 1);
      }
    }
    return result;
  }
}
