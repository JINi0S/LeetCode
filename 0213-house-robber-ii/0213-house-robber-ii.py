class Solution:
    def rob(self, nums: List[int]) -> int:
        """
        처음이 true면 리스트[n] = false > [:-1]
        처음이 false면 리스트[n]은 상관없음 [1:]
        """
        def find(nums) -> int:
            n = len(nums)
            dp = [0 for i in range(n)]
            for i in range(0, 2):
                dp[i] = max(nums[0:i+1])
            for i in range(2, n):
                dp[i] = max(dp[i-2] + nums[i], dp[i-1])
            return dp[n-1]
        
        n = len(nums)
        if n <= 3:
            return max(nums)
        
        return max(find(nums[1:]), find(nums[:n-1]))
        
            
            