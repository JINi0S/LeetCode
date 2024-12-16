class Solution(object):
    def minDistance(self, word1, word2):
        m, n = len(word1), len(word2)
        dp = [list(range(n+1))] + [[r+1]+[0]*n for r in range(m)]
        
        for i in range(m):
            for j in range(n):
                if word1[i]==word2[j]:
                    dp[i+1][j+1] = dp[i][j]  
                else:
                    dp[i+1][j+1] = min(dp[i][j], dp[i+1][j], dp[i][j+1]) + 1
       
        return dp[m][n]