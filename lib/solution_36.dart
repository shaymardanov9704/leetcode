///Valid Sudoku

class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<List<int>> rows = List.generate(9, (index) => []);
    List<List<int>> columns = List.generate(9, (index) => []);
    List<List<int>> boxes = List.generate(9, (index) => []);
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        final element = int.tryParse(board[i][j]);
        if (element == null) {
          continue;
        }
        final rowElement = rows[i];
        if (rowElement.contains(element)) return false;
        rowElement.add(element);

        final columnElement = columns[j];
        if (columnElement.contains(element)) return false;
        columnElement.add(element);

        final boxElement = boxes[((i ~/ 3) * 3) + (j ~/ 3)];
        if (boxElement.contains(element)) return false;
        boxElement.add(element);
      }
    }
    return true;
  }
}
