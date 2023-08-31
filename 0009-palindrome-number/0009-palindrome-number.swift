class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var str = Array(String(x))
        var s = 0
        var e = str.count-1
        while s < e {
            if str[s] != str[e] {
                return false
            } else {
                s += 1
                e -= 1
            }
        }
        return true
    }
}