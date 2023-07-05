import 'package:leetcode_trainings/solution_94.dart';

class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) return true;
    if (p != null && q == null || p == null && q != null || p?.val != q?.val) {
      return false;
    }
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right);
  }
}
