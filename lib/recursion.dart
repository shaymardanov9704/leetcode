
int factorial(int n) {
  int k = 1;
  while (n > 0) {
    k = k * n;
    n = n - 1;
  }
  return k;
}
