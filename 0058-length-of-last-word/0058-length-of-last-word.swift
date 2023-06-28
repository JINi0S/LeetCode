class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arr : [String] = []
        var a = (s.split(separator: " "))
        return a[a.count-1].count
    }
}