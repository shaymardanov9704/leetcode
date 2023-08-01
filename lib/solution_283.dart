///Move Zeroes

class Solution283 {
  void moveZeroes(List<int> nums) {
    for (var num in nums) {
      if (num == 0) {
        nums.remove(num);
        nums.add(num);
      }
    }
  }

  void moveZeroesV2(List<int> nums) {
    int count = 0;
    for (int item in nums) {
      if (item == 0) count++;
    }
    nums.removeWhere((item) => item == 0);
    nums.addAll([for (int i = 0; i < count; i++) 0]);
  }
}
