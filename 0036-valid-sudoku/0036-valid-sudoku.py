class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
     
        for row in board:
            filtered_board = [cell for cell in row if cell != "."]
            if len(filtered_board) != len(set(filtered_board)):
                return False
                
        for y in range(9):
            arr = []
            for x in range(9): 
                if board[x][y] != ".":
                    arr.append(board[x][y])
              
            if len(arr) != len(set(arr)):
                return False
            
       
        r = [[0,2], [3,5], [6,8]]
        
        for i in range(3):
            for j in range(3):
                arr = []
                startX = r[i][0]
                endX = r[i][1]
                startY = r[j][0]
                endY = r[j][1]

                for x in range(startX, endX+1):
                    for y in range(startY, endY+1):
                        if board[x][y] != ".":
                            arr.append(board[x][y])
                        
                if len(arr) != len(set(arr)):
                    return False
         
        return True
    