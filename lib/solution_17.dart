///Letter Combinations of a Phone Number

class Solution {
  List<String> letterCombinations(String digits) {
    Map<String, List> numbers = {
      "2": ["a", "b", "c"],
      "3": ["d", "e", "f"],
      "4": ["g", "h", "i"],
      "5": ["j", "k", "l"],
      "6": ["m", "n", "o"],
      "7": ["p", "q", "r", "s"],
      "8": ["t", "u", "v"],
      "9": ["w", "x", "y", "z"],
    };
    List digitsL = digits.split("");
    while (digits.isNotEmpty) {
      for (int i = 0; i < digitsL.length; i++) {

      }
    }

    return [];
  }
}
