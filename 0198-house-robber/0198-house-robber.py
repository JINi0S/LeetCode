class Solution:
    def rob(self, nums: List[int]) -> int:
        """
        :1일 때 = i
        :2일 때 = max(i,i-1)
        :3일 때 = i-1까지의 최대,i-2까지의 최대+i 
        :4일 때 = i-1까지의 최대,i-2까지의 최대+i, i-3까지의 최대 + i 

        """
        n = len(nums)
        dp = [0 for _ in range(n)]
        dp[0] = nums[0]
        
        if n == 1:
            return dp[0]
        elif n == 2:
            return max(dp[0], nums[1])
        elif n == 3:
            return max(max(dp[0], nums[1]), dp[0]+nums[2])
        else:
            dp[1] = max(nums[0], nums[1])
            dp[2] = max(dp[1], dp[0]+nums[2])

            for i in range(3, n):
                dp[i] = max(dp[i-1], dp[i-2]+nums[i], dp[i-3]+nums[i])
            print(dp)
            return max(dp[n-1], dp[n-2])