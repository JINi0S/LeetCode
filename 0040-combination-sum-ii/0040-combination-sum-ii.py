class Solution:
    def combinationSum2(self, candidates: List[int], target: int) -> List[List[int]]:
        ans = []
        candidates.sort()

        def dfs(st: int, sumV: int, arr: [int]):
            if sumV == target:
                ans.append(arr)
                return
            
            for i in range(st, len(candidates)):
                if i > st and candidates[i] == candidates[i - 1]:
                    continue
               
                if candidates[i] + sumV > target:
                    break
                    
                dfs(i+1, sumV + candidates[i], arr+[candidates[i]])
                

        dfs(0,0,[])
        return ans