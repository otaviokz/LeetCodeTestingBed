//
//  PlusOneLinkedListTests.swift
//  LeetCodeTestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class PlusOneLinkedListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlusOneLinkedList() {
        // GIVEN
        let original = ListNode.from([1,2,3,9])
        
        // WHEN
        let target =  PlusOneLinkedListTests. ?.add1ToLast()
        
        // THEN
        XCTAssertEqual(target?.toArray(), [1, 2, 4, 0])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
