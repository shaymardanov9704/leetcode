import 'dart:math';

///Container With Most Water

class Solution11 {
  int maxArea(List<int> height) {
    int maxArea = 0, left = 0;
    int right = height.length - 1;
    while (left < right) {
      int area = (right - left) * min(height[left], height[right]);
      maxArea = max(maxArea, area);
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }
    return maxArea;
  }
}
