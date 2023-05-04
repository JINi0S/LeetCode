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
    func getDecimalValue(_ head: ListNode?) -> Int {
        var currentNode = head
        
        var index: Float = 0.0
        var maxIndex: Float = 0.0
        var result = 0
        
        while currentNode!.next != nil {
            maxIndex += 1
            currentNode = currentNode!.next
        }
        currentNode = head
        
        while true {
            if currentNode!.val == 1 {
                result += Int(pow(2.0, maxIndex - index))
            }
            index += 1.0
            
            if currentNode!.next == nil {
                break
            } else {
                currentNode = currentNode!.next
            }

        }
        return result
    }
}