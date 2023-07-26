/// Intersection of Two Arrays II
///
class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var element in nums2) {
      if (nums1.contains(element)) {
        result.add(element);
        nums1.remove(element);
      }
    }
    return result;
  }
}
