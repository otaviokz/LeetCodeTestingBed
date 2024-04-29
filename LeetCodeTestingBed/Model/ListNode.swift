//
//  LinkedListNode.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = Int.min; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    public var hasInvalidValue: Bool { val == Int.min }
}
