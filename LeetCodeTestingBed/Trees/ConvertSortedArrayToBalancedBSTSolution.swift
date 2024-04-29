//
//  ConvertSortedArrayToBalancedBSTSolution.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

class ConvertSortedArrayToBalancedBSTSolution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode {
        arrayToBSTNode(nums)
    }
    
    func arrayToBSTNode(_ nums: [Int]) -> TreeNode {
        let arrays = bisectIntArray(nums)
        
        if arrays.count == 1 {
            let singleArray = arrays[0]
            return TreeNode(singleArray[0], nil, nil)
        }
        
        var value: Int = -1
        var lhs = arrays[0]
        var rhs = arrays[1]
        if lhs.count >= rhs.count {
            value = lhs[lhs.count - 1]
            lhs = lhs.dropLast()
        } else {
            value = rhs[0]
            rhs = Array(rhs.dropFirst())
        }
        return TreeNode(
            value,
            lhs.isEmpty ? nil : arrayToBSTNode(lhs),
            rhs.isEmpty ? nil : arrayToBSTNode(rhs)
        )
    }
    
    func bisectIntArray(_ nums: [Int]) -> [[Int]] {
        let lenght = nums.count
        if lenght == 0 {
            return []
        } else if lenght == 1 {
            return [[nums[0]]]
        }
        
        var midPoint = lenght / 2
        if lenght % 2 == 0 {
            midPoint -= 1
        }
        
        let lhs: [Int] = Array(nums[0...midPoint])
        let rhs: [Int] = Array(nums[(midPoint + 1)..<lenght])
        
        return [lhs, rhs]
    }
}
