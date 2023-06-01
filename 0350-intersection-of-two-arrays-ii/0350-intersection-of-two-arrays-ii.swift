class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var n1 = nums1.sorted()
        var n2 = nums2.sorted()
        var result: [Int] = []
         
        for n in n2 {
            if let index = same(n1, 0, n1.count-1, n) {
                result.append(n1[index])
                n1.remove(at: index)
            }
        }
        
        return result
    }
    
    func same(_ arr: [Int?], _ low: Int, _ high: Int, _ val: Int) -> Int? {
        guard low <= high else {
            return nil
        } 
        
        let middle = low + (high - low / 2)
              
        if arr[middle] == val {
            return middle
        }
        else if arr[middle]! > val {
            return same(arr, low, middle-1, val)
        }
        else {
            return same(arr, middle+1, high, val)
        }
    }
}
