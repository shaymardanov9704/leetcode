///Permutations

class Solution46 {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> res = [[]];
    for (int i = 0; i < nums.length; i++) {
      int size = res.length;
      for (int j = 0; j < size; j++) {
        List<int> curr = res.removeAt(0);
        for (int k = 0; k <= curr.length; k++) {
          List<int> perm = List.of(curr)..insert(k, nums[i]);
          res.add(perm);
        }
      }
    }
    return res;
  }
}
