//
//  141.swift : Linked List Cycle
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 22/10/2022.
//

struct P141 {
  // Definition for singly-linked list.
  public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
      self.val = val
      self.next = nil
    }
  }

  class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
      if (head == nil) {
        return false
      }

      var slow = head
      var fast = head?.next

      while slow != nil, fast != nil {
        guard slow !== fast else { return true }
        slow = slow?.next
        fast = fast?.next?.next
      }

      return false
    }
  }
}