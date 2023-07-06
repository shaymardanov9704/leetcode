import 'package:leetcode_trainings/solution_94.dart';

class Solution101 {
  bool isSym(TreeNode? left, TreeNode? right) {
    if (left == null && right == null) return true;
    if (left != null && right != null ||
        left == null && right != null ||
        left?.val != right?.val) {
      return false;
    }
    return isSym(left?.left, right?.right) && isSym(left?.right, right?.left);
  }

  bool isSymmetric(TreeNode? root) {
    return isSym(root, root);
  }
}

class Solution {
  bool findSym(TreeNode? firstNode, TreeNode? secondNode) {
    if (firstNode == null && secondNode == null) return true;
    if (firstNode != null && secondNode == null ||
        firstNode == null && secondNode != null ||
        firstNode?.val != secondNode?.val) return false;
    return findSym(firstNode?.left, secondNode?.right) &&
        findSym(firstNode?.right, secondNode?.left);
  }

  bool isSymmetric(TreeNode? root) {
    return findSym(root, root);
  }
}
