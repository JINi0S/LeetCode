class Solution {
    func removeDuplicates(_ s: String) -> String {
       var list = s.map {String($0)}
  
        var resultList : [String] = []
        
        for index in 0 ..< list.count {
            if resultList.isEmpty {
                resultList.append(list[index])
            }
            else if resultList[resultList.endIndex-1] == list[index]{
                resultList.popLast()
            }
            else if resultList[resultList.endIndex-1] != list[index]{
                resultList.append(list[index])
            }
        }
        return resultList.joined(separator:"")
    }
}