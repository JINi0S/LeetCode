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

// class Solution {
//     func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
//         guard let root = root else { return false }
        
//         var t = k - root.val
        
//         if k == t * 2 && root.left == nil && root.right == nil{
//             return false
//         }
        
//         if find(root, t) {
//             return true
//         }
        
//         if findTarget(root.left, k) {
//             return true
//         }
//         if findTarget(root.right, k) {
//             return true
//         }
        
//         return false
//     }
    
//     func find(_ root: TreeNode?, _ key: Int ) -> Bool {
//         guard let root = root else { return false }
//         print("find", root.val, key)
        
//         if root.val == key {
//             return true
//         }
//         else if root.val > key {
//             return find(root.left, key)
//         }
//         else {
//             return find(root.right, key)
//         }
//         return false
//     }
// }


class Solution {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        return find(root, root, k)
    }
    
    func find(_ node: TreeNode?, _ root: TreeNode?, _ k: Int) -> Bool {
        guard let node = node else { return false }
        
        let complement = k - node.val
        if complement != node.val && search(root, complement) {
            return true
        }
        
        return find(node.left, root, k) || find(node.right, root, k)
    }
    
    func search(_ node: TreeNode?, _ target: Int) -> Bool {
        guard let node = node else { return false }
        
        if node.val == target {
            return true
        } else if node.val < target {
            return search(node.right, target)
        } else {
            return search(node.left, target)
        }
    }
}