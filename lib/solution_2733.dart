///Neither Minimum nor Maximum

class Solution2733 {
  int findNonMinOrMax(List<int> nums) {
    if (nums.length <= 2 || nums.isEmpty) return -1;
    int max = nums.first;
    int min = nums.first;
    int returnedValue = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > max) max = nums[i];
    }
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] < min) min = nums[i];
    }
    for (int num in nums) {
      if (num != min && num != max) {
        returnedValue = num;
        break;
      }
    }
    return returnedValue;
  }
}
