int factorialWithRecursion(int n) {

  if (n == 1) {
    return 1;
  } else {
    return n * factorialWithRecursion(n = 1);
  }
  ///second way
  ///return n == 1 ? 1 : n * factorial(n - 1);
}
int factorial(int n) {
  int k = 1;
  while (n > 0) {
    k = k * n;
    n = n - 1;
  }
  return k;
}
