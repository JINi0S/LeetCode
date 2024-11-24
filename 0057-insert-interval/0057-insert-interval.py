"""
1. 왼쪽 찾기 L
    리스트의 l, r 확인하면서 크거나 같은 게 있을 때까지 확인
    -> l이 크거나 같았으면, r 업데이트(R로)
    -> r이 크거나 같았으면, r 업데이트(R로)
2. 오른쪽 찾기
"""
class Solution:
    def insert(self, intervals: List[List[int]], newInterval: List[int]) -> List[List[int]]:
        
        if not intervals:
            return [newInterval]
    
        # 왼쪽 찾기

        leftIdx = 0
        newL, newR = newInterval[0], newInterval[1]
        if newR < intervals[0][0]:
            intervals.insert(0, [newL, newR])
        elif newL > intervals[-1][1]:
            intervals.append([newL, newR])
            return intervals
        else:
            for idx in range(len(intervals)):
                l, r = intervals[idx]
                if l >= newL or r >= newL:
                    leftIdx = idx
                    # print(newL, l, r, newR)

                    if l <= newR:
                        print(newL, l, r, newR)

                        intervals[idx][0] = min(newL, l)
                        intervals[idx][1] = max(newR, r)
                    print(idx, newR, r)
                    break
           
                        
        # 오른쪽 찾기
        if newR == newL and newR != intervals[leftIdx][0] and not intervals[leftIdx][0] <= newL <= intervals[leftIdx][1]:
            intervals.insert(leftIdx, [newL, newR])
            return intervals
        
        if newR < intervals[leftIdx][0]:
            intervals.insert(leftIdx, [newL, newR])
            return intervals
        
        rightIdx = leftIdx
        while rightIdx < len(intervals)-1:
            l, r = intervals[rightIdx]
            nl, nr = intervals[rightIdx+1]
            
            if r >= nl and r >= nr:  # 다음 거 두개가 전부 나보다 작으면 없애기
                intervals.pop(rightIdx+1)
            elif nl <= r <= nr:
                intervals[rightIdx][1] = nr # max(newR, nr)
                intervals.pop(rightIdx+1)
            else:
                rightIdx += 1
            
        return intervals