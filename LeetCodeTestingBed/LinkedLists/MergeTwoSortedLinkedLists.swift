//
//  MergeTwoSortedLinkedLists.swift
//  LeetCodeLestingBed
//
//  Created by Otávio Zabaleta on 28/04/2024.
//

final class MergeTwoSortedLinkedLists {
    static func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if let v1 = list1?.val, let v2 = list2?.val {
            if v1 < v2 {
                return ListNode(v1, mergeTwoLists(list1?.next, list2))
            } else if v1 > v2 {
                return ListNode(v2, mergeTwoLists(list1, list2?.next))
            } else {
                return ListNode(v1, ListNode(v2, mergeTwoLists(list1?.next, list2?.next)))
            }
        } else if let v1 = list1?.val {
            return ListNode(v1, mergeTwoLists(list1?.next, list2))
        } else if let v2 = list2?.val {
            return ListNode(v2, mergeTwoLists(list1, list2?.next))
        }
        
        return nil
    }
}
