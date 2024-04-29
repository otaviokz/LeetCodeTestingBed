//
//  ListNode+UtilsTests.swift
//  LeetCodeTestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class ListNode_UtilsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReversed() {
        // GIVEN
        let array = [1, 2, 3, 4, 5]
        let original = ListNode.from(array)
        
        // WHEN
        let reversed = original?.reversed()
        
        // THEN
        XCTAssertEqual(reversed?.toArray(), [5, 4, 3, 2, 1])
    }
    
    func testFromArray() {
        // GIVEN:
        let array = [1, 7, -13, 9]
        let wrongNode = ListNode(Int.max)
        // WHEN
        let root = ListNode.from(array)
        
        // THEN
        XCTAssertEqual(root?.val, 1)
        let second: ListNode = root?.next ?? wrongNode
        XCTAssertEqual(second.val, 7)
        let third = second.next ?? wrongNode
        XCTAssertEqual(third.val, -13)
        let fourth = third.next ?? wrongNode
        XCTAssertEqual(fourth.val, 9)
        XCTAssertNil(fourth.next)
    }
    
    func testToArray() throws {
        // GIVEN:
        let root = ListNode(1, ListNode(7, ListNode(-13, ListNode(4))))
        
        // WHEN
        let array = root.toArray()
        
        // THEN
        XCTAssertEqual(array, [1, 7, -13, 4])
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
}
