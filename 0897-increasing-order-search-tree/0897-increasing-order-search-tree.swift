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
    var res = TreeNode(0)
    var ref : TreeNode?

    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {return nil}
        ref = res
        dfs(root)
 
        return res.right
    }
    
    func dfs(_ root: TreeNode?) {
        guard let root = root else {return}
        dfs(root.left)
        
        root.left = nil
        ref!.right = root
        ref = ref!.right
        
        dfs(root.right)
    }
}