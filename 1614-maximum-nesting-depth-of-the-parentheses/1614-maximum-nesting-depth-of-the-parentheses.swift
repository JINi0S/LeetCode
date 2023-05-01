class Solution {
    func maxDepth(_ s: String) -> Int {
        var depth : Int = 0
        var maxDepth: [Int] = [0]
        for str in s {
            if str == "(" {
                depth += 1
            }
            else if str == ")" {
                maxDepth.append(depth)
                depth -= 1
            }
        }
        guard let result = maxDepth.max() else { return 0 }
        return result        
    }
}