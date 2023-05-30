class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var n1 = nums1.sorted()
        var n2 = nums2.sorted()
        var result: [Int] = []
        
        var freqDict: [Int: Int] = [:] // 딕셔너리 생성
        
        if nums1.count > nums2.count {
            for num in n1 {
                freqDict[num, default: 0] += 1 // nums1의 요소들을 딕셔너리에 추가
            }
            
            for num in n2 {
                if let count = freqDict[num], count > 0 {
                    result.append(num) // 딕셔너리에 있는 경우 결과에 추가하고 카운트 감소
                    freqDict[num] = count - 1
                }
            }
        } else {
            for num in n2 {
                freqDict[num, default: 0] += 1 // nums2의 요소들을 딕셔너리에 추가
            }
            
            for num in n1 {
                if let count = freqDict[num], count > 0 {
                    result.append(num) // 딕셔너리에 있는 경우 결과에 추가하고 카운트 감소
                    freqDict[num] = count - 1
                }
            }
        }
        
        return result
    }
}