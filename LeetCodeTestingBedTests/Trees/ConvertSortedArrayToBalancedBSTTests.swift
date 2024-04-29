//
//  ConvertSortedArrayToBalancedBSTTests.swift
//  LeetCodeLestingBedTests
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import XCTest
@testable import LeetCodeTestingBed

final class ConvertSortedArrayToBalancedBSTTests: XCTestCase {
    let sut = ConvertSortedArrayToBalancedBSTSolution()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testBisectOddSizedIntArray() throws {
        // GIVEN
        let array = [1, 2, 3, 4, 5, 6, 7];
        
        // WHEN
        let subArrays = sut.bisectIntArray(array)
        
        // THEN
        XCTAssertEqual(subArrays.count, 2)
        XCTAssertEqual(subArrays[0], [1, 2, 3, 4])
        XCTAssertEqual(subArrays[1], [5, 6, 7])
    }
    
    func testBisectEvenSizedIntArray() throws {
        // GIVEN
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        
        // WHEN
        let subArrays = sut.bisectIntArray(array)
        
        // THEN
        XCTAssertEqual(subArrays.count, 2)
        XCTAssertEqual(subArrays[0], [1, 2, 3, 4, 5])
        XCTAssertEqual(subArrays[1], [6, 7, 8, 9, 10])
    }
    
    func testBisectSmallEvenSizedIntArray() throws {
        // GIVEN
        let array = [1, 2];
        
        // WHEN
        let subArrays = sut.bisectIntArray(array)
        
        // THEN
        XCTAssertEqual(subArrays.count, 2)
        XCTAssertEqual(subArrays[0], [1])
        XCTAssertEqual(subArrays[1], [2])
    }
    
    func testBisectSmallOddSizedIntArray() throws {
        // GIVEN
        let array = [1, 2, 3];
        
        // WHEN
        let subArrays = sut.bisectIntArray(array)
        
        // THEN
        XCTAssertEqual(subArrays.count, 2)
        XCTAssertEqual(subArrays[0], [1, 2])
        XCTAssertEqual(subArrays[1], [3])
    }
    
    func testBisectUnarySizedIntArray() throws {
        // GIVEN
        let array = [1];
        
        // WHEN
        let subArrays = sut.bisectIntArray(array)
        
        // THEN
        XCTAssertEqual(subArrays.count, 1)
        XCTAssertEqual(subArrays[0], [1])
    }
    
    func testBuildBSTFromIntArray() {
        // GIVEN
        let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        // WHEN
        let top = sut.arrayToBSTNode(nums)
        
        // THEN
        
        // Top
        XCTAssertEqual(top.val, 5)
        
        // Top - 1
        let two = top.left!
        let seven = top.right!
        XCTAssertEqual(two.val, 2)
        XCTAssertEqual(seven.val, 7)
        
        // Top - 2
        let one = two.left!
        XCTAssertEqual(one.val, 1)
        
        let three = two.right!
        XCTAssertEqual(three.val, 3)
        
        let six = seven.left!
        XCTAssertEqual(six.val, 6)
        
        let eight = seven.right!
        XCTAssertEqual(eight.val, 8)
        
        // Top - 3
        
        XCTAssertNil(one.left)
        XCTAssertNil(one.right)
        
        XCTAssertNil(three.left)
        let four = three.right!
        XCTAssertEqual(four.val, 4)
        
        XCTAssertNil(six.left)
        XCTAssertNil(six.right)
        
        XCTAssertNil(eight.left)
        let nine = eight.right!
        XCTAssertEqual(nine.val, 9)
        
        
        // Top - 4
        XCTAssertNil(four.left)
        XCTAssertNil(four.right)
        
        XCTAssertNil(nine.left)
        XCTAssertNil(nine.right)
    }
    
    func testBuildBSTFromIntArray_Two() {
        // GIVEN
        let nums = [-10,-3,0,5,9]
        
        // WHEN
        let top = sut.arrayToBSTNode(nums)
        
        // THEN
        
        // Top
        XCTAssertEqual(top.val, 0)
        
        // Top - 1
        let minusTen = top.left!
        XCTAssertEqual(minusTen.val, -10)
        
        let five = top.right!
        XCTAssertEqual(five.val, 5)
        
        // Top - 2
        XCTAssertNil(minusTen.left)
        let minusThree = minusTen.right!
        XCTAssertEqual(minusThree.val, -3)
        
        XCTAssertNil(five.left)
        let nine = five.right!
        XCTAssertEqual(nine.val, 9)
        
        // Top - 3
        XCTAssertNil(minusThree.left)
        XCTAssertNil(minusThree.right)
        
        XCTAssertNil(nine.left)
        XCTAssertNil(nine.right)
    }
    
    func testBuildBSTFromTinyIntArray() {
        // GIVEN
        let nums = [1, 3]
        
        // WHEN
        let top = sut.arrayToBSTNode(nums)
        
        // THEN
        
        // Top
        XCTAssertEqual(top.val, 3)
        
        // Top - 1
        
        let one = top.left!
        XCTAssertEqual(one.val, 1)
        
        XCTAssertNil(top.right)
        
        // Top - 2
        XCTAssertNil(one.left)
        XCTAssertNil(one.right)
    }
}
