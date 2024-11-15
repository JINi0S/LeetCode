import heapq
from collections import defaultdict

class Solution(object):
    def maxSlidingWindow(self, nums, k):
        ans = [max(nums[:k])]
        pq = []
        out = defaultdict(int)

        for i in range(k):
            heapq.heappush(pq, (-nums[i], nums[i]))
        
        idx = k
        while idx < len(nums):
            heapq.heappush(pq, (-nums[idx], nums[idx]))
            out[nums[idx-k]] += 1

            while True:
                top = heapq.heappop(pq)[1]
                if out[top] == 0:
                    heapq.heappush(pq, (-top, top))
                    break
                out[top] -= 1

            ans.append(top)
            idx += 1
        return ans