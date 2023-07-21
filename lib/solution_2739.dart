/// Total Distance Traveled

class Solution2739 {
  int distanceTraveled(int mainTank, int additionalTank) {
    int distance = 0;
    int steps = 0;
    while (mainTank > 0) {
      mainTank--;
      steps++;
      distance += 10;
      if (steps % 5 == 0 && additionalTank > 0) {
        mainTank++;
        additionalTank--;
      }
    }
    return distance;
  }
}
