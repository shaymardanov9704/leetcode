/// Relative Ranks

class Solution506 {
  List<String> findRelativeRanksV2(List<int> score) {
    List<String> medals = ["Gold Medal", "Silver Medal", "Bronze Medal"];
    List<String> result = List.generate(score.length, (index) => '');
    var copy = score.map((e) => e).toList();
    copy.sort();
    copy = copy.reversed.toList();
    for (int i = 0; i < copy.length; i++) {
      int index = score.indexOf(copy[i]);
      result[index] = i > 2 ? "${i + 1}" : medals[i];
    }
    return result;
  }
}
