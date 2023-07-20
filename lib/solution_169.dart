/// Majority Element

class Solution169 {

  ///Better Way
  int majorityElementV1(List<int> nums) {
    Map<int, int> map = {};
    for (var i in nums) {
      if (map.containsKey(i)) {
        map[i] = map[i]! + 1;
      } else {
        map.addAll({i: 1});
      }
    }
    int max = 0;
    int val = 0;
    map.forEach((k, v) {
      if (v > val) {
        val = v;
        max = k;
      }
    });
    return max;
  }

  ///Easy Way
  int majorityElementV2(List<int> nums) {
    nums.sort();
    return nums[nums.length ~/ 2];
  }
}
