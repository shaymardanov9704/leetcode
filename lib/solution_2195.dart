///Append K Integers With Minimal Sum

class Solution2195 {
  int minimalKSum(List<int> nums, int k) {
    nums.sort();
    int prev = -1;
    int sum = 0;
    for (int num in nums) {
      if (prev == num) continue;
      if (num <= k) {
        k++;
        sum += num;
      }
      prev = num;
    }
    return (1 + k) * k ~/ 2 - sum;
  }

  int minimalKSum1(List<int> nums, int k) {
    int result = 0;
    int temp = 1;
    while (k > 0) {
      if (!nums.contains(temp)) {
        result += temp;
        temp++;
        k--;
      } else {
        temp++;
      }
    }
    return result;
  }
}
