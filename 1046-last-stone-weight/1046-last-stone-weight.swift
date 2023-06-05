class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var heap = makeHeap(stones)
        while heap.count > 1 {
            heap = heap.filter { $0 != 0 }
            if heap.count >= 3 {
                if heap[1] > heap[2] {
                    heap[0] = heap[0] - heap[1]
                    heap[1] = 0
                } else {
                    heap[0] = heap[0] - heap[2]
                    heap[2] = 0
                }
            } else if heap.count == 2 {
                return heap[0] - heap[1]
            }
            heap = makeHeap(heap)
        }
        return heap[0]
    }
    
    func makeHeap(_ nums: [Int]) -> [Int] {
        var nums = nums
        var newNums = [Int]()
        let maxCount = nums.count
        for i in 0..<maxCount {            
            newNums.append(nums[i])
            var j = i
            var parentIdx = (j-1)/2
            while parentIdx >= 0, newNums[parentIdx] < newNums[j] {                
                let temp = newNums[j]
                newNums[j] = newNums[parentIdx]
                newNums[parentIdx] = temp
                j = parentIdx
                parentIdx = (j-1)/2                
            }
        }
        return newNums
    }
}