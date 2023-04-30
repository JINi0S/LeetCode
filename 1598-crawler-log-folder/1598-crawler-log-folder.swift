class Solution {
    func minOperations(_ logs: [String]) -> Int {
          var list: [String] = []
        for log in logs {
            if log == "../" {
                list.popLast()
            }
            else if log == "./" {
                continue
            }
            else {
                list.append(log)
            }
        }
        return list.count
    }
}