class Solution:
    def minCostConnectPoints(self, points: List[List[int]]) -> int:
        # 크루스칼 > 경우의 수 구하고, 작은 것 부터 싸이클 없으면 더하기 > 길이가 n-1이면 종료
        n = len(points)
        distances = []  # [(st, end, cost)]
                
        # 거리 구하기 distance[st][end] = 거리
        for i in range(n):
            sx, sy = points[i][0], points[i][1]
            for j in range(i+1, n):
                ex, ey = points[j][0], points[j][1]
                distances.append((i, j, abs(sx - ex) + abs(sy - ey)))
        
        distances.sort(key = lambda x: x[2])
        
        parents = [i for i in range(n)]
        
        def findParents(x: int) -> int:
            if parents[x] != x:
                parents[x] = findParents(parents[x])
            return parents[x]
        
        def unionParents(x: int, y: int)->bool:
            parent_x = findParents(x)
            parent_y = findParents(y)
            
            if parent_x == parent_y:
                return False
            else:
                if x > y:
                    parents[parent_y] = parent_x
                else:
                    parents[parent_x] = parent_y
                return True

        path_cnt = 0
        sum_cost = 0
        for st, ed, cost in distances:
            # 싸이클 없으면 더하기. 길이가 n - 1 이되면 종료
            if unionParents(st, ed):
                path_cnt += 1
                sum_cost += cost
            if path_cnt == n-1:
                break
            
        return sum_cost