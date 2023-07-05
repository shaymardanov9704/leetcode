class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution94 {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> res = <int>[];
    if (root == null) return res;
    helper(root, res);
    return res;
  }

  void helper(TreeNode? root, List<int> res) {
    if (root == null) return;
    helper(root.left, res);
    res.add(root.val);
    helper(root.right, res);
  }
}
