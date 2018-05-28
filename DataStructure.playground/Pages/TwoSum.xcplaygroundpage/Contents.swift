//: Playground - noun: a place where people can play


/*
 source: https://leetcode.com/problems/two-sum/description/
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            let x = target - value
            if let result = dict[x] {
                return [result, index]
            }
            dict[value] = index
        }
        return []
    }
}

let result = Solution().twoSum([2,7,11,15], 9)
print(result)



