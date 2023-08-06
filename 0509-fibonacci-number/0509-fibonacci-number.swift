class Solution {
    func fib(_ n: Int) -> Int {
        var cache: [Int] = Array(repeating:0, count: n+1)
        if n < 2 {
            return n
        }
        cache[0] = 0
        cache[1] = 1

        for i in 2...n {
            cache[i] = cache[i-2] + cache[i-1]

        }
        return cache[n]
    }
}