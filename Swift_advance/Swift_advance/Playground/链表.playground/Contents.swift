//: Playground - noun: a place where people can play

import UIKit

enum List<Element> {
    case end
    indirect case node(Element, next:List<Element>)
}

extension List {
    func cons(_ x:Element) -> List {
        return .node(x, next: self)
    }
}



let list = List<Int>.end.cons(1).cons(2).cons(3)

extension List: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self = elements.reversed().reduce(.end, { (result, item) in
            result.cons(item)
        })
    }
}


let list2: List = [1,2,3]

