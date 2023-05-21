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
    var minimum = Int.max
    var prev: Int?

    func minDiffInBST(_ root: TreeNode?) -> Int {
        guard let root = root else {return 0}
        culMin(root) 
        return minimum
    }
    
    func culMin(_ root: TreeNode?) {
        if root == nil {
            return
        }
        
        culMin(root!.left)
        if prev != nil {
            minimum = min(minimum, root!.val - prev!)
        }
        prev = root!.val
        culMin(root!.right)
    }
}