class Solution70 {
  int climbStairs(int n) {
    int n1 = 0, n2 = 1;
    late int n3;
    for (int i = 1; i <= n; i++) {
      n3 = n1 + n2;
      n1 = n2;
      n2 = n3;
    }
    return n3;
  }
}

///Climbing Stairs
///Beats 66%
