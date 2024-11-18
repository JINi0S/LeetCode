class Solution(object):
    def dailyTemperatures(self, temperatures):
        idx = len(temperatures)-2
        stk = [[temperatures[-1], len(temperatures)-1]] # 스택의 마지막보다 작으면 스택 뒤에 넣기 & 크면 빼고 넣기
        res = [0 for _ in range(len(temperatures))]
        
        while idx >= 0 and stk:
            if temperatures[idx] < stk[-1][0]:
                res[idx] = stk[-1][1] - idx
                stk.append([temperatures[idx], idx])
            else:
                while stk and temperatures[idx] >= stk[-1][0]:
                    stk.pop()
                if stk:
                    res[idx] = stk[-1][1] - idx
                else:
                    res[idx] = 0
                stk.append([temperatures[idx], idx])
            idx -= 1
        return res