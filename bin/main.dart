void main() {
  print(combinations([1, 2, 3], 2));
  print(findCombinations([1, 2, 3], 2));
}

List<List<int>> combinations(List<int> array, int length) {
  List<List<int>> result = [];
  if (length == 1) {
    for (int item in array) {
      result.add([item]);
    }
  } else {
    for (int i = 0; i <= array.length - length; i++) {
      List<int> subArray = array.sublist(i + 1);
      print("Sub Array: $subArray");
      List<List<int>> subCombinations = combinations(subArray, length - 1);
      print("Sub Combinations: $subCombinations");
      for (List<int> combination in subCombinations) {
        combination.insert(0, array[i]);
        result.add(combination);
      }
      print("Result:  $result");
      print("\n==================================================\n");
    }
  }
  return result;
}

List<List<int>> findCombinations(List<int> arr, int length) {
  List<List<int>> result = [];
  List<int> indices = List.generate(length, (index) => index);
  print(indices);
  bool done = false;
  while (!done) {
    List<int> combination = [];
    for (int index in indices) {
      combination.add(arr[index]);
    }
    result.add(combination);
    int i = length - 1;
    while (i >= 0 && indices[i] == arr.length - length + i) {
      i--;
    }
    if (i < 0) {
      done = true;
    } else {
      indices[i]++;
      for (int j = i + 1; j < length; j++) {
        indices[j] = indices[j - 1] + 1;
      }
    }
  }
  return result;
}

List<List<int>> fun(List<int> array, int length) {
  List<List<int>> result = [];
  for (int i = 0; i < array.length - 1; i++) {
    List<int> temp = [];
    for (int j = i; j < length + i; j++) {
      temp.add(array[j]);
    }
    result.add(temp);
  }
  print(result);
  return result;
}
