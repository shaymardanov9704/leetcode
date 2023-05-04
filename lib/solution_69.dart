///Sqrt(x)
class Solution69 {
  int mySqrt(int x) {
    int sqrt = 0;
    for (int i = 1; i < 64000; i++) {
      if (x - i * i >= 0) {
        sqrt = i;
      }
    }
    return sqrt;
  }
}
