import 'dart:math';

import 'package:leetcode_trainings/solution_94.dart';

class Solution104 {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;
    int left = maxDepth(root.left);
    int right = maxDepth(root.right);
    return 1 + max(left, right);
  }
}
