/// Pascal's Triangle

class Solution118 {
  List<List<int>> generate(int numRows) {
    List<List<int>> result = [];

    for (int i = 0; i < numRows; i++) {
      List<int> item = [];
      for (int j = 0; j <= i; j++) {
        if (j == 0 || j == i) {
          item.add(1);
        } else {
          item.add(result[i - 1][j - 1] + result[i - 1][j]);
        }
      }
      result.add(item);
    }
    return result;
  }
}
