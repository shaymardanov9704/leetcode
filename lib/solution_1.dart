///Two numbers
class Solution1 {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[j] + nums[i] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}
