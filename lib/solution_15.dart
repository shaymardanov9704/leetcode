/// 3Sum

class Solution15 {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> list = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i; j < nums.length - 1; j++) {
        if (nums[i] + nums[j] + nums[j + 1] == 0) {
          list.add([nums[i], nums[j], nums[j + 1]]);
        }
      }
    }
    return list;
  }
}
