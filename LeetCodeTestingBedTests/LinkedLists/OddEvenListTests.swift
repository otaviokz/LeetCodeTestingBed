//
//  OddEvenListTests.swift
//  LeetCodeTestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class OddEvenListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test() throws {
        let list = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(5, ListNode(8, ListNode(13)))))))
        XCTAssertEqual(list.print(), "[1, 1, 2, 3, 5, 8, 13]")
        
        let oddEvenList = OddEvenList.oddEvenList(list)
        XCTAssertEqual(oddEvenList?.print(), "[1, 2, 5, 13, 1, 3, 8]")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
