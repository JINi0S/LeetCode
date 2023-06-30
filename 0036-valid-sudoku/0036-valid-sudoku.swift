class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for bd in board {
            var filteredBoard = bd.filter { String($0) != "." } 
            if filteredBoard.count != Set(filteredBoard).count {
                return false 
            }
        }
        
        var arr: [Character] = []
        
        for y in 0..<9 {
            arr = []
            for x in 0..<9 where board[x][y] != "." {
                arr.append(board[x][y])
            }   
            if arr.count != Set(arr).count { 
                print(arr)
                return false
            }      
        } 
       
        let r = [[0,2], [3,5], [6,8]]
        
        for i in 0..<3 {
            for j in 0..<3 {
                arr = []
                let startX = r[i][0]
                let endX = r[i][1]
                let startY = r[j][0]
                let endY = r[j][1]

                for x in startX...endX {
                    for y in startY...endY {
                        if board[x][y] != "." {
                            arr.append(board[x][y])
                        }
                    }
                }

                if arr.count != Set(arr).count {
                    print(arr)
                    return false
                }
            }
        }

        return true
    }
}