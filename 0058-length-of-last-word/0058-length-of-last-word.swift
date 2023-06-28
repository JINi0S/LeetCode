class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var a = (s.split(separator: " "))
        return a[a.count-1].count
    }
}