class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var queue: [Character] = []
        var same: [Character] = []
        for str in s {
            if let index = queue.firstIndex(of: str) {
                queue.append(str)
                same.append("0")
                same[index] = "0"
            }
            else {
                queue.append(str)
                same.append("1")
            }
        }
        return same.firstIndex(of: "1") ?? -1
    }
}