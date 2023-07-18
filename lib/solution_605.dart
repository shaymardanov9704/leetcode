///Can Place Flowers

class Solution605 {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    for (int i = 0; i < flowerbed.length; i++) {
      if (flowerbed[i] == 0) {
        final left = i == 0 || flowerbed[i - 1] == 0;
        final right = i == flowerbed.length - 1 || flowerbed[i + 1] == 0;
        if (left && right) {
          flowerbed[i] = 1;
          count++;
          if (count >= n) return true;
        }
      }
    }
    return count >= n;
  }
}
