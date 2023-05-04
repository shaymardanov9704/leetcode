/// Roman to Integer
class Solution13 {
  final Map<String, int> roman = {
    "": 0,
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  int romanToInt(String s) {
    int n = s.length;
    var sum = roman[s[n - 1]]!;
    for (var i = s.length - 2; i >= 0; i--) {
      if (roman[s[i]]! >= roman[s[i + 1]]!) {
        sum += roman[s[i]]!;
      } else {
        sum -= roman[s[i]]!;
      }
    }
    return sum;
  }
}
