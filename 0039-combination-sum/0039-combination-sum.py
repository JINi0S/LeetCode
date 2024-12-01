import itertools

class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        ans = []
        
        def dfs(i: int, sumV: int, arr: [int]):
            if sumV == target:
                ans.append(arr)
                return
            elif i == len(candidates) or sumV > target:
                return
            elif sumV < target:
                dfs(i, sumV+candidates[i], arr+[candidates[i]])
                dfs(i+1, sumV, arr)

        dfs(0,0,[])

        return ans
       
        