class Solution {
    func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
        let num = nums.sorted()
        var prefixSum: [Int] = [0]
        
         // 누적 합 계산
        for n in num {
            prefixSum.append(prefixSum.last! + n)
        }
        
        var result: [Int] = []
        
        for query in 0..<queries.count {
            let count = find(prefixSum, queries[query], 0, prefixSum.count-1)
            result.append(count-1)
        }
        return result
    }
    
    func find(_ query: [Int], _ key: Int, _ low: Int, _ high: Int) -> Int {
        
        let mid: Int = low + (high - low)/2
        
        guard low <= high else { return low }
        
        if query[mid] <= key {
            return find(query, key, mid + 1, high)
        } else {
            return find(query, key, low, mid - 1)
        }
    }
}