//
//  ListNode+Utils.swift
//  LeetCodeTestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

import Foundation

extension ListNode {
    func print() -> String {
        var string = "["
        var node: ListNode? = self
        
        while node != nil {
            string += "\(node!.val)"
            if node!.next != nil {
                string += ", "
            }
            node = node?.next
        }
        return string + "]"
    }
    
    
    func reversed() -> ListNode? {
        ListNode.from(toArray().reversed())
    }
    
    func add1ToLast() -> ListNode? {
        ass
    }
    
    
    func toArray() -> [Int] {
        var array: [Int] = []
        array.append(val)
        var node: ListNode? = self.next
        while node != nil {
            array.append(node!.val)
            node = node?.next
        }
        return array
    }
    
    static func from(_ array: [Int]) -> ListNode? {
        guard !array.isEmpty else { return nil }
        var root = ListNode(array[0])
        var tail = root
        for i in 1..<array.count {
            tail.next = ListNode(array[i])
            tail = tail.next ?? ListNode(array[i])
        }
        return root
    }
}

