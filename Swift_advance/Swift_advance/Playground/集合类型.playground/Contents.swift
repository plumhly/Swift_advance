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


extension FIFOQueue: Collection {
    var startIndex: Int {
        return 0
    }
    
    var endIndex: Int {
        return left.count + right.count
    }
    
    func index(after i: Int) -> Int {
        precondition(i < endIndex)
        return i + 1;
    }
    
    public subscript(position: Int) -> Element {
//        print(position);
    precondition((0..<endIndex).contains(position) , "out of bound")
        if position < left.endIndex {
            return left[left.count - position - 1]
        } else {
            return right[position - left.count]
        }
        
    }
}

var qu = FIFOQueue<String>()
qu.enqueue("l")
qu.enqueue("i")
qu.enqueue("b")
qu.enqueue("o")

for item in qu {
    print(item)
}

var array = Array(qu)
array.append(contentsOf: qu[2...3])



