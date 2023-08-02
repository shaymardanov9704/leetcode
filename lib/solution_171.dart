/// Excel Sheet Column Number

class Solution {
  int titleToNumber(String columnTitle) {
    return columnTitle.codeUnits.fold(0, (p, e) => p * 26 + (e - 65));
  }
}
