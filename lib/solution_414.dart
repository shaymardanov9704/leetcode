///Third Maximum Number

class Solution414 {
  int max(List<int> array) {
    if (array.length == 1) return array.first;
    if (array.length == 2) return array[0] > array[1] ? array[0] : array[1];

    final left = max(array.getRange(0, array.length ~/ 2).toList());
    final right = max(array.getRange(array.length ~/ 2, array.length).toList());

    return left > right ? left : right;
  }

  int thirdMaxV1(List<int> nums)  {
    nums = nums.toSet().toList();
    int count = 1;
    if (nums.length < 3) {
      return max(nums);
    }

    while (true) {
      if (count == 3) {
        break;
      } else {
        int max_ = max(nums);
        nums.remove(max_);
        count++;
      }
    }
    return max(nums);
  }

  int thirdMaxV2(List<int> nums) {
    nums.sort();
    var data = nums.toSet();
    int count = data.length;
    if (data.length <= 2) {
      return data.last;
    } else {
      return data.elementAt(count - 3);
    }
  }
}
