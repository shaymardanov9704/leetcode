///Pascal`s Triangle II

class Solution119 {
  List<int> getRow(int rowIndex) {
    List<List<int>> result = [];
    for (int i = 0; i <= rowIndex; i++) {
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
    return result[rowIndex];
  }
}
