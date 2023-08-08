class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        var cache: [Int] = Array(repeating: 0, count: n+1)
        if n < 2 { return n }
        cache[0] = 0
        cache[1] = 1
        for i in 2...n {
            if i % 2 == 0 {
                cache[i] = cache[i/2]
            } else {
                cache[i] = cache[i/2] + cache[i/2+1]
            }
        }
        return cache.max()!
    }
}