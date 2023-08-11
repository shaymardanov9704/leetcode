///Combination Sum

class Solution39 {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    List<List<int>> result = [];
    solve(0, candidates, target, result, []);
    return result;
  }

  void solve(int i, List<int> candidates, int target, List<List<int>> result,
      List<int> temp) {
    if (i == candidates.length) {
      if (target == 0) {
        result.add(List.from(temp));
      }
      return;
    }
    if (candidates[i] <= target) {
      temp.add(candidates[i]);
      solve(i, candidates, target - candidates[i], result, temp);
      temp.removeLast();
    }
    solve(i + 1, candidates, target, result, temp);
  }
}
