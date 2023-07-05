class BinarySearch {
  int fun(List<int> array, int x, int low, int high) {
    while (high >= low) {
      int mid = low + (high - low) ~/ 2;
      if (array[mid] == x) {
        return mid;
      }
      if (array[mid] < x) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
      print("Bir qadam");
    }
    return -1;
  }
}
