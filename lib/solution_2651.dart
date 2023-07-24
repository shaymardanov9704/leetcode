///Calculate Delayed Arrival Time
class Solution2651 {
  int findDelayedArrivalTime(int arrivalTime, int delayedTime) {
    return (arrivalTime + delayedTime)%24;
  }
}
