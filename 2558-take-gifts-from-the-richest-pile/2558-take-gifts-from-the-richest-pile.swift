class Solution {
    func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
        var gift = gifts
        for i in 0..<k {
            gift = gift.sorted(by: >)
            gift[0] = Int((Double(gift[0])).squareRoot())
        }
      
        return gift.reduce(0) { $0+$1 }
    }
    
}

//[25,64,9,4,100]
//--
//[25,64,9,4,10]
//[25,8,9,4,10]
//[5,8,9,4,10]
//힙을 만들고, 계속 수정