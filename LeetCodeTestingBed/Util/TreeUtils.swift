//
//  TreeUtils.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

class TreeUtils {
    static func arrayToTree(_ array: [Int]) -> TreeNode? {
        var list = array
        if list.isEmpty { return nil }
        
        return TreeNode(list[0], arrayToTree(list.droppingFirst()), arrayToTree(list.droppingFirst()))
    }
    
    static func treeToArray(_ tree: TreeNode?) -> [Int?] {
        guard let tree = tree else { return [nil] }
        return [tree.val]  + treeToArray(tree.left) + treeToArray(tree.right)
    }
}

extension Array {
    func droppingFirst() -> [Element] {
        Array(dropFirst())
    }
}
