//
//  TreeNode.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

class TreeNode {
    let val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ value: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = value
        self.left = left
        self.right = right
    }
}

extension TreeNode {
    func toIntArray() -> [Int]? {
        [val] + (left?.toIntArray() ?? []) + (right?.toIntArray() ?? [])
    }
    
    static func bstDepth(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        return 1 + max(bstDepth(node.left), bstDepth(node.right))
    }
}
