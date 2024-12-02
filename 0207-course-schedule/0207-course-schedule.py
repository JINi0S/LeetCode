class Solution:
    def buildAdjacencyList(self, n, edgesList):
        adjList = [[] for _ in range(n)]
        for c1, c2 in edgesList:
            adjList[c2].append(c1)

        print(adjList)
        return adjList    

    def canFinish(self, numCourses: int, prerequisites: List[List[int]]) -> bool:
        adjList = self.buildAdjacencyList(numCourses, prerequisites)
        visited = set()

        def hasCycle(v, stack):
            if v in visited:
                if v in stack:
                    return True
                return False

            visited.add(v)
            stack.append(v)

            for i in adjList[v]:
                if hasCycle(i, stack):
                    return True

            stack.pop()
            return False

        # 하나라도 싸이클이 있으면 false 반환
        for v in range(numCourses):
            if hasCycle(v, []):
                return False

        return True
