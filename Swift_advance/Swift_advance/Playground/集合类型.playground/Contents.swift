//: Playground - noun: a place where people can play

import UIKit


protocol Queue {
    associatedtype Element
    
    mutating func enqueue(_ newElement: Element)
    
    mutating func dequeue() -> Element?
}

struct FIFOQueue<Element>: Queue {
    fileprivate var left: [Element] = []
    fileprivate var right: [Element] = []
    
    //O(1)
    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }
    
    mutating func dequeue() -> (Element)? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        return left.popLast()
    }
}