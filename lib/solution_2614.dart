/// Prime In Diagonal

class Solution2614 {
  bool isPrime(N) {
    if (N == 1) return false;
    for (var i = 2; i <= N / i; ++i) {
      if (N % i == 0 || N == 1) {
        return false;
      }
    }
    return true;
  }

  int diagonalPrime(List<List<int>> nums) {
    List<int> diagonal = [];
    for (int i = 0; i < nums.length; i++) {
      if (i == nums.length - i - 1 && isPrime(nums[i][i])) {
        diagonal.add(nums[i][i]);
      } else {
        if (isPrime(nums[i][i])) {
          diagonal.add(nums[i][i]);
        }
        if (isPrime(nums[i][nums.length - i - 1])) {
          diagonal.add(nums[i][nums.length - i - 1]);
        }
      }
    }
    diagonal.sort();
    return diagonal.isNotEmpty ? diagonal.last : 0;
  }
}
