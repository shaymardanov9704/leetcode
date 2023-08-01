import 'dart:math';

///Best Time to Buy and Sell Stock

class Solution121 {
  ///better way
  int maxProfitV1(List<int> prices) {
    int result = 0;
    int minPrice = prices.first;
    for (int i = 0; i < prices.length; i++) {
      minPrice = min(minPrice, prices[i]);
      result = max(result, prices[i] - minPrice);
    }
    return result;
  }

  ///not good way
  int maxProfitV2(List<int> prices) {
    int result = 0;
    for (int i = 0; i < prices.length - 1; i++) {
      for (int j = i + 1; j < prices.length; j++) {
        if (prices[j] - prices[i] > result) {
          result = prices[j] - prices[i];
        }
      }
    }
    return result;
  }
}
