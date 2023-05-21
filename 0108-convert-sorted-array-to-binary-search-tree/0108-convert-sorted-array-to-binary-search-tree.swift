/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return bst(nums, 0, nums.count - 1)
    }
    
    func bst(_ num: [Int], _ low: Int, _ high: Int) -> TreeNode?{
         guard low <= high else { return nil }

         let mid = low + (high - low) / 2
         let root = TreeNode(num[mid])
         root.left = bst(num, low, mid - 1)
         root.right = bst(num, mid + 1, high)
         return root
    }
}