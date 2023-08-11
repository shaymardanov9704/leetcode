///Combination Sum

class Solution40 {
  List<List<int>> combinationSum2(List<int> candidates, int target) {
    candidates.sort();
    List<List<int>> li = [];
    solve(candidates, [], li, 0, target);
    return li;
  }

  void solve(List<int> candidates, List<int> temp, List<List<int>> result,
      int index, int target) {
    if (target == 0) {
      result.add(List.from(temp));
      return;
    } else {
      for (int i = index; i < candidates.length; i++) {
        if (i > index && candidates[i] == candidates[i - 1]) continue;
        if (candidates[i] > target) break;
        temp.add(candidates[i]);
        solve(candidates, temp, result, i + 1, target - candidates[i]);
        temp.removeLast();
      }
    }
  }
}
