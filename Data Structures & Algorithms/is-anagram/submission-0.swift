class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var anagram:[Character: Int] = [:]
        for char in s {
            if anagram.keys.contains(char){
                anagram[char] = anagram[char]! + 1
            }
            else {
                anagram[char] = 1
            }
        }
        for char in t {
            if !anagram.keys.contains(char){ return false }
            else if anagram[char] == 1 {
                anagram[char] = nil
            } else {
                anagram[char] = anagram[char]! - 1
            }
        }
        return anagram.isEmpty
    }
}