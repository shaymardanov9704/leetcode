///Divide and Conquer
int max(List<int> array) {
  if (array.length == 1) return array.first;
  if (array.length == 2) return array[0] > array[1] ? array[0] : array[1];

  final left = max(array.getRange(0, array.length ~/ 2).toList());
  final right = max(array.getRange(array.length ~/ 2, array.length).toList());

  return left > right ? left : right;
}
