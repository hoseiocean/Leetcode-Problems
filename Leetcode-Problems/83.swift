//
//  83.swift : Remove Duplicates from Sorted List
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//

struct P83 {
  class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
      var current: ListNode? = head
      while current != nil && current?.next != nil {
        if current?.val == current?.next?.val {
          current?.next = current?.next?.next
        } else {
          current = current?.next
        }
      }
      return head
    }
  }
}
