List<int> mergeSort(List<int> array) {
  if (array.length < 2) return array;
  int middleIndex = array.length ~/ 2;
  List<int> left = mergeSort(array.sublist(0, middleIndex));
  List<int> right = mergeSort(array.sublist(middleIndex, array.length));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int? i = 0;
  int? j = 0;
  while (i! < left.length && j! < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  while (i! < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j! < right.length) {
    result.add(right[j]);
    j++;
  }

  return result;
}
