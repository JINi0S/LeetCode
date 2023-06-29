class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var arr: [Int:Int] = [:]
        for n in nums {
            if arr.keys.contains(n) {
                arr[n]! += 1
            } else {
                arr[n] = 1
            }
        }
        var res = 0
         for (key, value) in arr {
            if value == 1 {
                res = key
                break
            }
        }
        return res
    }
}