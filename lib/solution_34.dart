///Find First and Last Position of Element in Sorted Array
class Solution {
  ///First Way with for loop
  List<int> searchRange(List<int> nums, int target) {
    if (!nums.contains(target)) return [-1, -1];

    int start = 0;
    int end = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        start = i;
        break;
      }
    }

    for (int i = nums.length - 1; i >= 0; i--) {
      if (nums[i] == target) {
        end = i;
        break;
      }
    }
    return [start, end];
  }

  ///Second Way with List methods
  List<int> searchRange2(List<int> nums, int target) {
    if (!nums.contains(target)) return [-1, -1];
    return [
      nums.indexOf(target),
      nums.lastIndexWhere((element) => element == target),
    ];
  }
}
