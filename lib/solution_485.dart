///Max Consecutive Ones

class Solution485 {
  ///With Help Python Senior Developer ))
  int findMaxConsecutiveOnes(List<int> nums) {
    int response = 0;
    int tempResponse = 0;
    for (int i in nums) {
      if (i == 0) {
        if (response < tempResponse) {
          response = tempResponse;
        }
        tempResponse = 0;
      } else {
        tempResponse++;
      }
    }
    if (response > tempResponse) {
      return response;
    }
    return tempResponse;
  }
}
