/// Group Anagrams

class Solution49 {
  List<List<String>> groupAnagrams(List<String> strs) {
    final groups = <String, List<String>>{};

    for (String s in strs) {
      List<String> w = s.split('').toList();
      w.sort();

      groups.update(
        w.join(),
            (val) => [...val, s],
        ifAbsent: () => [s],
      );
    }
    print(groups);
    print(List.from(groups.values));
    return List.from(groups.values);
  }
}
