import itertools

class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        ans = []
        
        def findCombi(now: [int], ableList: [int]):
            for able in ableList:
                tmp_sum = sum(now)+able
                
                if tmp_sum == target:
                    ans.append(tuple(sorted(now[1:]+[able])))
                    return
                elif tmp_sum < target:
                    findCombi(now+[able], ableList)
                elif tmp_sum > target:
                    return
            
        candidates.sort()
        for i in range(len(candidates)):
            ableList = candidates[i:]
            findCombi([0], ableList)

        unique_ans = list(map(list, set(ans)))  # 중복 제거 후 다시 리스트로 변환
        return unique_ans
       