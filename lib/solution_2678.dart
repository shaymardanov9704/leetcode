///Number of Senior Citizens

class Solution2678 {

  ///Better way
  int countSeniorsV1(List<String> details) {
    int result = 0;
    for (var element in details) {
      if (int.parse(element.substring(11, 13)) > 60) {
        result++;
      }
    }
    return result;
  }

  int countSeniorsV2(List<String> details) {
    int result = 0;
    for (int i = 0; i < details.length; i++) {
      if (int.parse(details[i].substring(11, 13)) > 60) {
        result++;
      }
    }
    return result;
  }
}
