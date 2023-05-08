/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
*/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil { return head }
        var cur: ListNode? = head             
        var result: ListNode? = reverseList(cur!.next)
        
        cur!.next!.next = cur
        cur!.next = nil
        return result
    } 
}