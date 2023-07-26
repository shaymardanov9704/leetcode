///Intersection of Two Arrays

class Solution349 {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var element in nums1) {
      if (nums2.contains(element) && !result.contains(element)) {
        result.add(element);
      }
    }
    return result;
  }
}
