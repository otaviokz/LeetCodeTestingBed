//
//  OddEvenList.swift
//  LeetCodeTestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

/*
 Given the head of a singly linked list, group all the nodes with odd indices together followed by the
 nodes with even indices, and return the reordered list.
 
 The first node is considered odd, and the second node is even, and so on.
 
 Note that the relative order inside both the even and odd groups should remain as it was in the input.
 
 You must solve the problem in O(1) extra space complexity and O(n) time complexity.
 
 [2, 1, 3, 5, 6, 4, 7]
           V
 [2, 3, 6, 7, 1, 5, 4]
 */
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
final class OddEvenList {
    static func oddEvenList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var isOdd = true
        var root: ListNode?
        var tail: ListNode?
        var enumerator = head
        
        while enumerator != nil {
            if isOdd, let val = enumerator?.val {
                if root == nil {
                    root = ListNode(val)
                    tail = root
                } else {
                    tail?.next = ListNode(val)
                    tail = tail?.next
                }
            }
        
            enumerator = enumerator?.next
            isOdd.toggle()
        }
        
        isOdd = true
        enumerator = head
        
        while enumerator != nil {
            if !isOdd, let val = enumerator?.val {
                tail?.next = ListNode(val)
                tail = tail?.next
            }
            
            enumerator = enumerator?.next
            isOdd.toggle()
        }
        
        return root
    }
}
