///Merge Sorted Array
class Solution83 {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> array = [];
    for (int i = 0; i < m; i++) {
      array.add(nums1[i]);
    }
    for (int i = 0; i < n; i++) {
      array.add(nums2[i]);
    }
    array.sort();
  }
}
