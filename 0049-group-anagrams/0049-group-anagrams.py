class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        dic = dict()
        for s in strs:
            se = ''.join(sorted(s))
            dic.setdefault(se, []).append(s)
        return list(dic.values())