class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var record: [Int] = []
        for i in operations {            
            if i == "C" {
                record.popLast()
            }
            else if i == "D" {
                record.append(record[record.endIndex - 1] * 2)
            }
            else if i == "+" {
                var cal = 0
                cal = record[record.endIndex - 1] + record[record.endIndex - 2]
                record.append(cal)
            }
            else {
                guard let intOps = Int(i) else { break}
                record.append(intOps)
            }
        }
        return record.reduce(0) {$0 + $1}
    }
}