class Solution(object):
    def sortColors(self, nums):
        """
        :type nums: List[int]
        :rtype: None Do not return anything, modify nums in-place instead.
        """
        cntList = [0,0,0]
        for n in nums:
            cntList[n] += 1
        
        for i in range(0, cntList[0]):
            nums[i] = 0
        
        for i in range(cntList[0], cntList[0]+cntList[1]):
            nums[i] = 1
        
        for i in range(cntList[0]+cntList[1], len(nums)):
            nums[i] = 2
            