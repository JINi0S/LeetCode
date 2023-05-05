class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = 0
        for account in accounts {
            var sum = account.reduce(0) { $0+$1 }
            if max < sum {
                max = sum
            }
        }
        return max
    }
}