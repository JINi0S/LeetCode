# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

class Solution(object):
    global list
    
    def printValue(self, node):
        global list
        
        if node.left:
            self.printValue(node.left)
        list.append(node.val)
        if node.right:
            self.printValue(node.right)
            
            
    def kthSmallest(self, root, k):
        global list
        """
        :type root: Optional[TreeNode]
        :type k: int
        :rtype: int
        """
        list = []        
        self.printValue(root)

        return list[k-1]