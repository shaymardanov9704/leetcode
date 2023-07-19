///Lexicographically Smallest Palindrome

class Solution2697 {

  ///Better Way
  String makeSmallestPalindromeV1(String s) {
    List <String> array = s.split("");
    final n = array.length;
    for (int i = 0; i < n ~/ 2; i++) {
      if (array[i] != array[n - 1 - i]) {
        final compare = array[i].compareTo(array[n - 1 - i]);
        String c = compare > 0 ? array[n-i-1]:array[i];
        array[i] = c;
        array[n - i - 1] = c;
      }
    }
    return array.join();
  }


  String makeSmallestPalindromeV2(String s) {
    List<String> array = s.split("");
    final n = array.length;
    for (int i = 0; i < n ~/ 2; i++) {
      if (array[i] != array[n - 1 - i]) {
        array[i].compareTo(array[n - 1 - i]);
        List compareList = [array[i], array[n - 1 - i]];
        compareList.sort();
        String c = compareList.first;
        array[i] = c;
        array[n - i - 1] = c;
      }
    }
    return array.join();
  }
}
