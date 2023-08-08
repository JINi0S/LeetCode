class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        if n < 2 { return n }
        var cache: [Int] = Array(repeating: 0, count: n+1)
        cache[1] = 1
        for i in 2...n {
            cache[i] = cache[i/2] + (i % 2 == 0 ? 0 : cache[i/2+1])
        }
        return cache.max()!
    }
}