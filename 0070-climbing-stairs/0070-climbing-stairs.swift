class Solution {
    func climbStairs(_ n: Int) -> Int {
        var cache: [Int] = Array(repeating: 0, count: n + 1)
         if n < 3 {
            return n
        }
        cache[1] = 1
        cache[2] = 2
        for i in 3...n {
            cache[i] = cache[i-1] + cache[i-2]
        }
        return cache[n]
    }
}