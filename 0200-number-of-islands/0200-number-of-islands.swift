class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var map: [[Character]] = grid
        var count: Int = 0
        
        let x = grid.count
        let y = grid[0].count ?? 0
        
        for m in 0..<x {
            for n in 0..<y {
                if map[m][n] == "1" {
                    count += 1
                    DFS(m, n, &map)
                }            
            }
        }
        return count
    }
    
    func DFS(_ startX: Int, _ startY: Int, _ map: inout [[Character]]) {
        var queue: [(Int, Int)] = []
        queue.append((startX, startY))
        let dx = [0,0,1,-1]
        let dy = [1,-1,0,0]
        
        while let (qx, qy) = queue.isEmpty ? nil : queue.removeFirst() {
            for i in 0..<4 {
                let nx = qx + dx[i]
                let ny = qy + dy[i]
            
                if nx < 0 || ny < 0 || nx >= map.count || ny >= map[0].count {
                    continue
                }
                if map[nx][ny] == "1" {
                    map[nx][ny] = "0"
                    queue.append((nx, ny))
                }
            }
        }
    } 
}