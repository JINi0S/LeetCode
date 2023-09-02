class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var max: Int = 0
        for s in sentences {
            let tmp = s.split(separator: " ")
            if tmp.count > max {
                max = tmp.count
            }
        }
        return max
    }
}