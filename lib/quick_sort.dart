import 'dart:math';

List<int> quickSort(List<int> array) {
  if (array.length < 2) return array;
  int pivot = array[array.length ~/ 2];
  List<int> left = [];
  List<int> middle = [];
  List<int> right = [];
  for (int i in array) {
    if (i < pivot) {
      left.add(i);
    }
    if (i > pivot) {
      right.add(i);
    }
    if (i == pivot) {
      middle.add(i);
    }
  }
  return quickSort(left) + middle + quickSort(right);
}

List<int> quickSortV2(List<int> values, int left, int right) {
  if (left < right) {
    final indexPivot = partition(values, left, right);
    quickSortV2(values, left, indexPivot - 1);
    quickSortV2(values, indexPivot + 1, right);
  }
  return values;
}

int partition(List<int> values, int left, int right) {
  final pivotRange = right - left + 1;
  final randomPivot = Random().nextDouble().toInt() * pivotRange + left;

  swap(values, left, randomPivot);

  int pivot = values[left];
  int i = left;

  for (int j = i + 1; j <= right; j++) {
    if (values[j] <= pivot) {
      i++;
      swap(values, i, j);
    }
  }

  swap(values, left, i);

  return i;
}

List<int> swap(List<int> values, int left, right) {
  final temp = values[left];
  values[left] = values[right];
  values[right] = temp;
  return values;
}
