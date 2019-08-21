import UIKit

print("SortedSet")

public protocol SortedSet: BidirectionalCollection, CustomStringConvertible, CustomPlaygroundDisplayConvertible where Element: Comparable {
    init()
    func contains(_ element: Element) -> Bool
    mutating func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element)
}

extension SortedSet {
    public var description: String {
        let contents = self.lazy.map { "\($0)" }.joined(separator: ",")
        return "[\(contents)]"
    }
}

#if os(iOS)
import UIKit
extension SortedSet {
    public var playgroundDescription: Any {
        let text = NSMutableAttributedString(string: self.description)
        let range = NSRange(location: 0, length: text.length)
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 0
        style.alignment = .left
        style.maximumLineHeight = 17
        text.addAttribute(.font, value: UIFont(name: "Menlo", size: 13)!, range: range)
        text.addAttribute(.paragraphStyle, value: style, range: range)
        return text
    }
}
#endif


public struct SortedArray<Element: Comparable>: SortedSet {
    
    fileprivate var storage: [Element] = []
    public init() {}
}

extension SortedArray {
    func index(for element: Element) -> Int {
        var start = 0
        var end = count
        while start < end {
            let middle = start + (end - start) / 2;
            if element <= storage[middle] {
                end = middle
            } else {
                start = middle + 1
            }
        }
        return start
    }
}

extension SortedArray {
   public func index(of element: Element) -> Int? {
        let index = self.index(for: element)
        guard index < count, storage[index] == element else { return nil }
        return index
    }
}

extension SortedArray {
    public func contains(_ element: Element) -> Bool {
        let index = self.index(for: element)
        return index < count && storage[index] == element
    }
}

extension SortedArray {
    public func forEach(_ body: (Element) throws -> Void) rethrows {
        try storage.forEach(body)
    }
}

extension SortedArray {
    public func sorted() -> [Element] {
        return storage
    }
}

extension SortedArray {
    @discardableResult
    public mutating func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element) {
        let index = self.index(for: newElement)
        if index < count && storage[index] == newElement {
            return (false, storage[index])
        } else {
            storage.insert(newElement, at: index)
            return (true, newElement)
        }
        
    }
}

extension SortedArray: RandomAccessCollection {
    public typealias Indices = CountableRange<Int>
    public var startIndex: Int {
        return storage.startIndex
    }
    public var endIndex: Int {
        return storage.endIndex
    }

    public subscript(index: Int) -> Element {
        return storage[index]
    }
}


print("Example")
//
//var set = SortedArray<Int>()
//set.insert(3)
//set.insert(1)
//set.insert(2)
//
//set
//
//set.contains(1)
//
//var copy = set
//copy.insert(4)
//
//set.contains(4)
//copy.contains(4)

var numbers = [Int]() as! NSArray
//numbers[0] = 1
//numbers


print("OrderedSet")

//class My {
//    static func fist() {
//        print("class")
//    }
//
//    func fist(s: My.Type) {
//        print("instance")
//    }
//}
//
//let my = My()
//My.self == My

private class Canary {}

struct OrderedSet<Element: Comparable>: SortedSet {
    fileprivate var storage = NSMutableOrderedSet()
    fileprivate var canary = Canary()
    public init() {}
}

extension OrderedSet {
    public func forEach(_ body: (Element) -> Void) {
        storage.forEach { body($0 as! Element) }
    }
}

extension OrderedSet {
    fileprivate static func compare(_ a: Any, _ b: Any) -> ComparisonResult {
        let a = a as! Element, b = b as! Element
        if a < b {
            return .orderedAscending
        }
        if a > b {
            return .orderedDescending
        }
        return .orderedSame
    }
    
    public func index(of element: Element) -> Int? {
        let index = storage.index(of: element, inSortedRange: NSRange(0..<storage.count), usingComparator: OrderedSet.compare)
        return index == NSNotFound ? nil : index
    }
    
    public func contains(_ element: Element) -> Bool {
        return storage.contains(element) || index(of: element) != nil;
    }
}

extension OrderedSet: RandomAccessCollection {
    public typealias Index = Int
    public typealias Indices = CountableRange<Int>
    
    public var startIndex: Int { return 0 }
    public var endIndex: Int { return storage.count }
    public subscript(i: Int) -> Element {
        return storage[i] as! Element
    }
}

extension OrderedSet {
    fileprivate mutating func makeUnique() {
        if !isKnownUniquelyReferenced(&canary) {
            storage = storage.mutableCopy() as! NSMutableOrderedSet
            canary = Canary()
        }
    }
}

extension OrderedSet {
    fileprivate func index(for value: Element) -> Int {
        return storage.index(of: value, inSortedRange: NSRange(0..<storage.count), options: .insertionIndex, usingComparator: OrderedSet.compare)
    }
}

extension OrderedSet {
    @discardableResult
    public func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element) {
        let index = self.index(for: newElement)
        
    }
}
