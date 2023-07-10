import 'package:leetcode_trainings/solution_21.dart';

class Solution2 {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode a = ListNode(0);
    a = ListNode(l1!.val + l2!.val);
    a.next = ListNode(l1.next!.val + l2.next!.val);
    a.next?.next = ListNode(l1.next!.next!.val + l2.next!.next!.val);
    print("${a.val},${a.next?.val},${a.next?.next?.val}");
  }
}
