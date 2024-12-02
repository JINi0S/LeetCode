class Solution:
    direct = [[0,1],[1,0],[0,-1],[-1,0]]
    
    def inRange(self, board, x, y) -> bool:
        return 0 <= x <len(board) and 0 <= y < len(board[0])
    
    def bfs(self, board, word, x, y, idx, visited) -> bool:
        if idx == len(word) - 1:  # 마지막 글자까지 찾았을 경우
            return True

        for d in range(4):
            nx = x + self.direct[d][0]
            ny = y + self.direct[d][1]

            if not self.inRange(board, nx, ny) or (nx,ny) in visited:
                continue
                
            nextWord = word[idx+1]
            if nextWord == board[nx][ny]:
                visited.add((nx,ny))
                if self.bfs(board, word,nx,ny,idx+1,visited):
                    return True
                visited.remove((nx,ny))

        return False
            
    def exist(self, board: List[List[str]], word: str) -> bool:
        if len(word) > len(board) * len(board[0]):
            return False
        for i in range(len(board)):
            for j in range(len(board[i])):
                if board[i][j] == word[0]:
                    visited = set()
                    visited.add((i, j))
                    if self.bfs(board, word, i, j, 0, visited):
                        return True

        return False