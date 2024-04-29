//
//  MergeTwoSortedLinkedListsTests.swift
//  LeetCodeTestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class MergeTwoSortedLinkedListsTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMergeTwoSortedLinkedLists() throws {
        let l1 = ListNode(1, ListNode(2, ListNode(9)));
        let l2 = ListNode(0, ListNode(2, ListNode(22)));
        let merged = MergeTwoSortedLinkedLists.mergeTwoLists(l1, l2)
        
        
        XCTAssertEqual(merged?.val, 0)
        let merged2 = merged?.next
        XCTAssertEqual(merged2?.val, 1)
        let merged3 = merged2?.next
        XCTAssertEqual(merged3?.val, 2)
        let merged4 = merged3?.next
        XCTAssertEqual(merged4?.val, 2)
        let merged5 = merged4?.next
        XCTAssertEqual(merged5?.val, 9)
        let merged6 = merged5?.next
        XCTAssertEqual(merged6?.val, 22)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            let l1 = ListNode(1, ListNode(2, ListNode(4)));
            let l2 = ListNode(1, ListNode(3, ListNode(4)));
            let merged = MergeTwoSortedLinkedLists.mergeTwoLists(l1, l2)
        }
    }
    
}
