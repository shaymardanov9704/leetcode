class Solution268 {
    int missingNumber(List<int> nums) {
      int sum = 0;
      final int total = nums.length * (nums.length + 1) ~/ 2;
      for (int number in nums) {
        sum += number;
      }
      return total - sum;
    }
}
