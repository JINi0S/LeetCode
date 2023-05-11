class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var queue: [Character] = []
        var same: [Bool] = []
        for str in s {
            if let index = queue.firstIndex(of: str) {
                queue.append(str)
                same.append(false)
                same[index] = false
            }
            else {
                queue.append(str)
                same.append(true)
            }
        }
        return same.firstIndex(of: true) ?? -1
    }
}