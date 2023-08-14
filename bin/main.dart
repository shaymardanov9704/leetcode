void main() {
  void rotate(List<List<int>> matrix) {
    final n = matrix.length;
    final List list = List.generate(n, (index) => List.from(matrix[index]));
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        matrix[j][n - i - 1] = list[i][j];
      }
    }
  }

  ///[7,4,1],[8,5,2],[9,6,3]
  rotate([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
}
