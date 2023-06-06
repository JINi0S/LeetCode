class Solution { //heap으로 수정
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {

        (0..<nums.count)
            .sorted(by: { nums[$0] > nums[$1] })[..<k]
            .sorted()
            .map { nums[$0] }
    }
        
}