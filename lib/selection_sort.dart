void selectionSort(List<int> array) {
  int n = array.length;
  for (var i = 0; i < n - 1; i++) {
    int indexMin = i;
    for (var j = i + 1; j < n; j++) {
      if (array[j] < array[indexMin]) {
        indexMin = j;
      }
    }
    if (indexMin != i) {
      int temp = array[i];
      array[i] = array[indexMin];
      array[indexMin] = temp;
    }
  }
  print(array);
}
