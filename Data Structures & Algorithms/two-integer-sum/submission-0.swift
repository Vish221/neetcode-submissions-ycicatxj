class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            
            if let prevIndex = dict[complement] {
                return [prevIndex, index]
            }
            
            dict[num] = index
        }
        
        return []
    }
}