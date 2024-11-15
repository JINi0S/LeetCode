class Solution(object):
    def maxSlidingWindow(self, nums, k):
        l = deque([])
        
        for i in range(k):
            while l and nums[i]>=nums[l[-1]]:
                l.pop()
            l.append(i)
            
        ans = [nums[l[0]]]
		
        for i in range(1,len(nums)-k+1):
            while(l and nums[i+k-1]>=nums[l[-1]]):
                l.pop()
            l.append(i+k-1)
            
            if i-1==l[0]:
                l.popleft()
            ans.append(nums[l[0]])
            
        return ans