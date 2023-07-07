///Find Maximum Number of String Pairs

class Solution2744 {
  int maximumNumberOfStringPairs(List<String> words) {
    int sum = 0;
    for (int i = 0; i < words.length - 1; i++) {
      for (int j = i + 1; j < words.length; j++) {
        if (words[i] == words[j].split("").reversed.join()) {
          sum++;
        }
      }
    }
    return sum;
  }
}
