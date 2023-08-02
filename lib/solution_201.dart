/// Isomorphic Strings

class Solution201 {
  bool isIsomorphic(String s, String t) {
    Map<String, int> mapS = {};
    Map<String, int> mapT = {};
    for (int i = 0; s.length > i; i++) {
      mapS.addEntries({s[i]: i}.entries);
      mapT.addEntries({t[i]: i}.entries);
    }
    print(mapS);
    print(mapT);
    return mapS.values.join() == mapT.values.join();
  }
}
