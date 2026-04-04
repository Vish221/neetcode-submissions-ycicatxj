class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let arrSet = Set(nums)
        return arrSet.count != nums.count
    }
}
