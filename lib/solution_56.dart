import 'dart:math';

/// Merge Intervals

class Solution56 {
  List<List<int>> merge(List<List<int>> intervals) {
    intervals.sort((a, b) => a[0].compareTo(b[0]));
    List<List<int>> result = [];
    for (var interval in intervals) {
      if (result.isEmpty || result.last.last < interval[0]) {
        result.add(interval);
      } else {
        result.last.last = max(result.last.last, interval[1]);
      }
    }
    return result;
  }
}
