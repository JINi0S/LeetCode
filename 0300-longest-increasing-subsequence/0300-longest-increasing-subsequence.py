class Solution:
    def lengthOfLIS(self, nums: List[int]) -> int:
        n = len(nums)
        dp = [1] * n

        for r in range(1, n):
            for l in range(0, r):
                if nums[l] < nums[r]:
                    dp[r] = max(dp[r], 1 + dp[l])
                    
        return max(dp)