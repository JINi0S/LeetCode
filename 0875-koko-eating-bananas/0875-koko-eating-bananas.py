"""
총 n개의 바나나 더미가 있으며, i번째 더미에는 piles[i]개의 바나나가 있습니다. 현재 경비원들이 자리를 비운 상태이고, h 시간 후에 돌아옵니다.
코코는 자신이 한 시간 동안 먹을 바나나의 개수 k를 정할 수 있습니다. 매 시간마다 특정 더미를 선택해 그 더미에서 k개의 바나나를 먹습니다. 
만약 더미에 남아있는 바나나가 k개보다 적으면, 남은 모든 바나나를 먹고 해당 시간에는 더 이상 먹지 않습니다.
코코는 천천히 먹는 걸 선호하지만, 경비원들이 돌아오기 전까지 모든 바나나를 다 먹고 싶어합니다.
주어진 시간 h 내에 모든 바나나를 다 먹기 위해 필요한 최소한의 정수 k를 반환하세요.

h이 10의 9승이기 때문에 이분탐색으로 풂
# 바나나가 남았으면 더 먹어야함
# 바나나가 안남았으면 덜 먹어야함
"""

class Solution(object):

    def minEatingSpeed(self, piles, h):
        def feasible(speed):
            # return sum(math.ceil(pile / speed) for pile in piles) <= h  # slower        
            return sum((pile - 1) / speed + 1 for pile in piles) <= h  # faster

        left, right = 1, max(piles)
        
        while left < right:
            mid = left  + (right - left) // 2
            if feasible(mid):
                right = mid
            else:
                left = mid + 1
        return left
