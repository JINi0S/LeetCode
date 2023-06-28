class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var sum = 0
        var num = nums
        for n in 1..<num.count {   
            if num[n-1] >= num[n] { 
                sum += num[n-1] + 1 - num[n]
                num[n] =  num[n-1] + 1
            }
        }
        return sum
    }
}