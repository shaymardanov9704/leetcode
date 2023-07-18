/// Array Partition

class Solution561 {
  int arrayPairSum(List<int> nums) {
    nums.sort();
    int sum = 0;
    for (int i = 0; i < nums.length - 1; i += 2) {
      sum = sum + nums[i];
    }
    return sum;
  }
}
