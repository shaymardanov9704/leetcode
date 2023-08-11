void main() {
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

  List<List<int>> combinationSum(List<int> candidates, int target) {
    List<List<int>> result = [];
    solve(0, candidates, target, result, []);
    return result;
  }

  print(combinationSum([10, 1, 2, 7, 6, 1, 5], 8));
}
