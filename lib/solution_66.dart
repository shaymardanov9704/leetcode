class Solution66 {
  List<int> plusOne(List<int> digits) {
    int index = digits.length - 1;
    List<int> newItems = digits.toList();
    while (index >= 0) {
      if (digits[index] < 9) {
        newItems[index] = newItems[index] + 1;
        if (index < (digits.length - 1)) {
          newItems.replaceRange(index + 1, digits.length,
              List.generate(digits.length - index - 1, (_) => 0));
        }
        break;
      } else if (digits[index] == 9 && index == 0) {
        newItems.replaceRange(index, digits.length,
            List.generate(digits.length - index, (_) => 0));
        newItems.insert(0, 1);
        break;
      } else {
        index--;
      }
    }
    return newItems;
  }
}

/// Plus One
/// Beats 66ﬁ

// final int a = digits.last + 1;
// if (a >= 10) {
//   for (int i = 0; i < digits.length - 1; i++) {
//     returnedList.add(digits[i]);
//   }
//   returnedList.add(1);
//   returnedList.add(a % 10);
// } else {
//   for (int i = 0; i < digits.length - 1; i++) {
//     returnedList.add(digits[i]);
//   }
//   returnedList.add(a);
// }

// for (int i = 0; i < digits.length; i++) {
//     //   sum = sum * 10 + digits[i];
//     // }
//     // print(sum);
//     // sum = sum + 1;
//     // final k = sum.toString().split("");
//     // for (int i = 0; i < k.length; i++) {
//     //   returnedList.add(int.parse(k[i]));
//     // }
