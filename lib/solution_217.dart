///Contains Duplicate

class Solution217 {
  ///Memory
  bool containsDuplicate(List<int> nums) {
    nums.sort();
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
  ///Code
  bool containsDuplicateV2(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      if (nums.sublist(i + 1).contains(nums[i])) {
        return true;
      }
    }
    return false;
  }
}
