///Check if Array is Good

class Solution2784 {
  bool isGood(List<int> nums) {
    final count = List.filled(nums.length, 0);
    for (final v in nums) {
      if (v >= nums.length) return false;
      count[v]++;
    }
    if (count[nums.length - 1] != 2) return false;
    for (int i = 1; i < nums.length - 1; i++) {
      if (count[i] != 1) return false;
    }
    return true;
  }
}
