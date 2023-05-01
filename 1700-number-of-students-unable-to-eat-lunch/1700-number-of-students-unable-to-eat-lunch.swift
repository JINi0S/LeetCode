class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var resultStudents: [Int] = students
        var resultSandwich: [Int] = sandwiches
        var count = 0
        while true {
            if resultSandwich[0] == resultStudents[0] {
                resultSandwich.remove(at: 0)
                resultStudents.remove(at: 0)
                count = 0
                if resultSandwich.isEmpty {
                    break
                }
            }
            else {
                resultStudents.append(resultStudents[0])
                resultStudents.remove(at: 0)          
                
                count += 1
                
                if count > resultSandwich.count {
                    break
                }
            }           
        }
        return resultSandwich.count

    }
}