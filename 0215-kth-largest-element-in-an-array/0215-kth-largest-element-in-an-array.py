import heapq

class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        # heap 사용
        hp = []
        for num in nums:
            heapq.heappush(hp, num)
            
            if len(hp) > k:
                heapq.heappop(hp)
                
        return hp[0]