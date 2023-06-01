class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let num = nums.sorted()
        return (num[num.count-1] - 1) * (num[num.count-2]-1)
    }
}