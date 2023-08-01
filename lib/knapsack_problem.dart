import 'dart:math';

class Item {
  final String name;
  final int weight;
  final int value;

  const Item(this.name, this.weight, this.value);
}

int knapsack(List<Item> items, int capacity) {
  final n = items.length;
  final dp = List.generate(n + 1, (_) => List.filled(capacity + 1, 0));
  print(dp);
  for (var i = 1; i <= n; i++) {
    final item = items[i - 1];
    for (var j = 1; j <= capacity; j++) {
      if (item.weight > j) {
        dp[i][j] = dp[i - 1][j];
      } else {
        dp[i][j] = max(dp[i - 1][j], item.value + dp[i - 1][j - item.weight]);
      }
    }
  }
  print(dp);

  return dp[n][capacity];
}

void main() {
  final items = [
    Item('item1', 2, 10),
    Item('item2', 3, 15),
    Item('item3', 5, 20),
    Item('item4', 7, 25),
    Item('item5', 9, 30),
  ];

  final capacity = 15;

  final maxValue = knapsack(items, capacity);

  print(
      'Maximum value that can be obtained with a capacity of $capacity is $maxValue');
}
