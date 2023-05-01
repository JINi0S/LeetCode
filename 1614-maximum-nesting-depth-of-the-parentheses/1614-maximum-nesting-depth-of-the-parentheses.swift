class Solution {
    func maxDepth(_ s: String) -> Int {
        var depth : Int = 0
        var maxD : Int = 0
        for str in s {
            if str == "(" {
                depth += 1
            }
            else if str == ")" {
                if maxD < depth {
                    maxD = depth
                }
                depth -= 1
            }
        }
        return maxD        
    }
}