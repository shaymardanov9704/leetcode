/// Median of Two Sorted Arrays
class Solution4 {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    var a = nums1 + nums2;
    a.sort();
    final middle = a.length ~/ 2;
    if (a.length % 2 != 0) {
      return a[middle].toDouble();
    } else {
      return (a[middle]+a[middle-1])/2;
    }
  }
}