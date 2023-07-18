import 'package:leetcode_trainings/solution_2716.dart';

void main() {
  print(Solution2716().minimizedStringLength("aabc"));

  String removeTrailingZeros(String num) {
    while (num[num.length - 1] == "0") {
      num = num.substring(0, num.length - 2);
    }
    return num;
  }
  removeTrailingZeros("51230100");
}
