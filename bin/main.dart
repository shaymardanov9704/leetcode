void main() {
  Map<String, List<int>> result = {};
  var buf = <int>[];
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    for (int k = 0; k < nums.length - 2; k++) {
      if (nums[k] > 0) break;
      if (k > 0 && nums[k] == nums[k - 1]) continue;
      int j = k + 1, i = nums.length - 1;
      while (j < i) {
        if (nums[i] < 0) break;
        if (nums[k] + nums[j] + nums[i] == 0) {
          buf = [nums[k], nums[j], nums[i]];
          result[buf.toString()] = buf;
          j++;
        } else {
          nums[k] + nums[j] + nums[i] > 0 ? i-- : j++;
        }
      }
    }
    return result.values.toList();
  }

  threeSum([-1, 0, 1, 2, -1, -4]);
}
