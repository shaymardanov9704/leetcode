/// Rotate Image
class Solution48 {
  void rotate(List<List<int>> matrix) {
    final n = matrix.length;
    final List list = List.generate(n, (index) => List.from(matrix[index]));
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        matrix[j][n - i - 1] = list[i][j];
      }
    }
  }
}