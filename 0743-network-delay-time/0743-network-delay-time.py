class Solution:
    def networkDelayTime(self, times: List[List[int]], n: int, k: int) -> int:
        """
        n = 노드 갯수
        k = 시작 노드
        times = [st, ed, time]
        구해야하는 값 = 전체 순회하는데 걸리는 가장 짧은 시간

        다익스트라로 순회
        현재값+다음값했을 때 더 작으면 업데이트
        전체 밸류값중 최솟값 반환
        """
        maxV = 100000
        dic = dict()
        for st, ed, time in times:
            dic.setdefault(st, []).append((ed,time))
        
        dp = [maxV for _ in range(n+1)] # 길이가 n+1인 배열 생성

        que = deque()
        que.append(k)
        dp[k] = 0
        
        while que:
            next_que = []
            for q in que :
                nqList = dic.setdefault(q, [])
                for nq, ntime in nqList:
                    if dp[q] + ntime < dp[nq]:
                        dp[nq] = dp[q] + ntime
                        next_que.append(nq)
            
            que = next_que
            
        res = 0
        for i in range(1, n+1):
            res = max(dp[i], res)
        return res if res != maxV else -1
    
    