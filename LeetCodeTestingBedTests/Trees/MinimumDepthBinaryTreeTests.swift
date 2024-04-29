//
//  MinimumDepthBinaryTreeTests.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

func testLeetCodeExample1() throws {
    // GIVEN
    var node20 = TreeNode(20, TreeNode(15), TreeNode(7))
    var root = TreeNode(2, TreeNode(9), TreeNode(20))
    
    // WHEN
    let minDepth = MinimumDepthBinaryTree.minDepth(root)
    
    // THEN
    XCTAssertEqual(minDepth, 2)
}
