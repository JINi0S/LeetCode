
class Solution {
    func fillCups(_ amount: [Int]) -> Int {
        var num = amount.sorted()

        if num[2] > (num[0] + num[1]) {
            return  num[2]
        } else {
            if (num[0] + num[1] + num[2]) % 2 == 0 {
                return (num[0] + num[1] + num[2]) / 2  
            } else {
                return (num[0] + num[1] + num[2] + 1) / 2
            }
        }
    }
}