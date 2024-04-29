//
//  ArrayToTreeTests.swift
//  LeetCodeTestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class ArrayToTreeTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTreeToArrayDepthFirst() throws {
        let branch1 = TreeNode(1, TreeNode(4), TreeNode(-6))
        let branch2 = TreeNode(7, TreeNode(9), TreeNode(12))
        let tree = TreeNode(2, branch1, branch2)
        
        XCTAssertEqual(TreeUtils.treeToArray(tree), [2, 1, 4, nil, nil , -6, nil, nil, 7, 9, nil, nil , 12, nil, nil])
    }
    
    func testArrayToTree() {
        let root = TreeUtils.arrayToTree([2, 1, 4, 2, 3 , 5, 6])
        XCTAssertEqual(TreeUtils.treeToArray(root), [2, 1, 4, 2, 3 , 5, 6, nil, nil, nil , nil, nil, nil, nil, nil])
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
