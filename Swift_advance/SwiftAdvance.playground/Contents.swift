import UIKit
/*
do {
    let names = ["Paula", "Elena", "Zoe"]
    
//    var lastNameEndingIna: String?
//    for name in names.reversed() where name.hasSuffix("a") {
//        lastNameEndingIna = name
//        break
//    }
//    lastNameEndingIna
    
    var ele = names.last { $0.hasSuffix("a") }
    print(ele)
}

extension Sequence {
    func last(where predicate: (Element) -> Bool) -> Element? {
        for element in reversed() where predicate(element) {
            return element;
        }
        return nil
    }
}

extension Array {
    func accumulate<Result>(_ initialResult: Result, _ nextPartialResult:(Result, Element) -> Result) -> [Result] {
        var running = initialResult
        return map { element in
            running = nextPartialResult(running, element)
            return running
        }
    }
}

[1, 2, 3].accumulate(0, +)

extension Array {
    func filter(_ isIncluded: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for x in self where isIncluded(x) {
            result.append(x)
        }
        return result
    }
}

var filters =  [1, 2, 3].filter { $0 % 2 == 0 }
print(filters)


extension Sequence {
    func all(match predicat: (Element) -> Bool) -> Bool {
        return !contains { !predicat($0) }
    }
}


var alls = [2, 4].all {
    $0 % 2 == 0
}

extension Array {
    func reduce<T>(initial: T, _ nextPartial: (T, Element) -> T) -> T {
        var initialValue = initial
        for element in self {
            initialValue = nextPartial(initialValue, element)
        }
        return initialValue
    }
}

[1, 2, 3].reduce(initial: 0, +)

extension Array {
    func map1<T>(_ transform: (Element) -> T) -> [T] {
        return reduce(initial: []) { $0 + [transform($1)] }
    }
    
    func filter1(_ isInclude: (Element) -> Bool) -> [Element] {
        return reduce(initial: []) {
            isInclude($1) ? $0 + [$1] : $0
        }
    }
}

let map1 = [1, 2].map1 { $0 * 2 }
print(map1)
print([1, 2].filter1 { $0 > 1 })

do {
    let arra = [1, 2, 3]
    let slice = arra[1...2]
    type(of: slice)
}

do {
    var indices = IndexSet()
    indices.insert(integersIn: 1..<5)
    indices.insert(integersIn: 11..<15)
    let evenIndices = indices.filter { $0 % 2 == 0 }
    print(evenIndices)
}

extension Sequence where Element: Hashable {
    func unique() -> [Element] {
        var seen: Set<Element> = []
        return filter {
            element in
            if seen.contains(element) {
                return false
            } else {
                seen.insert(element)
                return true
            }
        }
    }
}

[1, 2, 3, 4, 5, 3, 2].unique()

do {
    let single = 0..<10
    single.contains(9)
    Array(single)
    let lowCase = Character("a")...Character("z")
    lowCase.overlaps("d"..."f")
    let formz = 0...
    print(formz)
    let uptoz = ..<Character("z")
    let c = 5..<5
    type(of: c)
}


do {
    let fromA = Character("a")...
    let throughZ = ...Character("z")
    
    let upto = ..<10
    let fromFive = 5...
    
//    CountablePartialRangeFrom
    
    for i in fromFive {
        if i == 10 {
             break;
        }
        print(i)
    }
    type(of: fromA)
    type(of: throughZ)
    type(of: upto)
    type(of: fromFive)
    typealias MY = Int
    
    let a: MY = 2
    type(of: a)
    
}

extension Range : RandomAccessCollection where Bound: Strideable, Bound.Stride: SignedInteger {
    
}

do {
    struct FibsIterator : IteratorProtocol {
        var state = (0, 1)
        mutating func next() -> Int? {
            let upcomming = state.0
            state = (state.1, state.0 + state.1)
            return upcomming
        }
    }

//    var iter = FibsIterator()
//    while let x = iter.next() {
//        print(x)
//    }
}

do {
    struct PrefixIterator: IteratorProtocol {
        let string: String
        var offset: String.Index
        
        init(string: String) {
            self.string = string
            offset = string.startIndex
        }
        
       mutating func next() -> Substring? {
            guard offset < string.endIndex else { return nil }
            offset = string.index(after: offset)
            return string[..<offset]
        }
    }
    
    
    let s = "helloplum"
    var iter = PrefixIterator(string: s)
    while let t = iter.next() {
        print(t)
    }
}

do {
    func fibsIterator() -> AnyIterator<Int> {
        var state = (0, 1)
        return AnyIterator {
            let upcomming = state.0
            state = (state.1, state.0 + state.1)
            return upcomming
        }
    }
    
    
    let fibs = fibsIterator()
    let it1 = fibs.makeIterator()
    it1.next()
    it1.next()
    
    let it2 = it1
    
    it2.next()
    it2.next()
    
    let fibSequce = AnySequence(fibs)
    Array(fibSequce.prefix(4))
}

do {
    let s = sequence(first: 0) {
        return $0 + 1
    }
    
    Array(s.prefix(4))
    
    let fb2 = sequence(state: (0, 1)) { (state: inout(Int, Int)) -> Int? in
        let upc = state.0
        state = (state.1, state.0 + state.1)
        return upc
    }
    Array(fb2.prefix(4))
    
    struct MY {
        var name: String
    }
    
    var my = MY(name: "plum")
    
    func change(my: inout MY) {
        my.name = "li"
    }
    change(my: &my)
    my.name
}
*/

//let standarin = AnySequence {
//    return AnyIterator {
//        readLine()
//    }
//}
//
//let numberStdin = standarin.enumerated()
//for (i, line) in numberStdin {
//    print("\(i + 1):\(line)")
//}

//let enumor = stride(from: 1, to: 19, by: 1).enumerated()
//for elem in enumor {
//    print(elem)
//}


//extension Sequence where Element: Equatable, SubSequence: Sequence, SubSequence.Element == Element {
//    func headMirrorsTail(_ n: Int) -> Bool {
//        let head = prefix(n)
//        let tail = suffix(n).reversed()
//        return head.elementsEqual(tail)
//    }
//}
//
//[1, 2, 3, 2, 1].headMirrorsTail(2)


//enum List<Element> {
//    case end
//    indirect case node(Element, next: List<Element>)
//}
//
//extension List {
//    func cons(_ x: Element) -> List {
//        return .node(x, next: self)
//    }
//}
//
//extension List : ExpressibleByArrayLiteral {
//    init(arrayLiteral elements: Element...) {
//        self = elements.reversed().reduce(.end) { (partialList, element) in
//            partialList.cons(element)
//        }
//    }
//}
//
//extension List {
//   mutating func push(_ x: Element) {
//        self = self.cons(x)
//    }
//
//    mutating func pop() -> Element? {
//        switch self {
//        case .end:
//            return nil
//        case let .node(x, next: tail):
//            self = tail
//            return x
//        }
//    }
//}
//
//extension List : IteratorProtocol, Sequence {
//    mutating func next() -> Element? {
//        return pop()
//    }
//}
//
//let emptyList = List<Int>.end
//let oneE = List.node(1, next: emptyList)
//let two = List<Int>.end.cons(1).cons(2).cons(3)
//let four: List = [3, 2, 1]
//
//for x in two {
//    print(x)
//}

/// 一个能将元素出队和入队的类型
protocol Queue {
    /// 在`self`中持有的元素类型
    associatedtype Element
    /// 将 `newElement` ⼊队到 `self`
    mutating func enqueue(_ newElement: Element)
    /// 从 `self` 出队⼀个元素
    mutating func dequeue() -> Element?
}


struct FIFOQueue<Element> : Queue {
    private var left: [Element] = []
    private var right: [Element] = []

    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }

    mutating func dequeue() -> Element? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        return left.popLast()
    }

}

//extension FIFOQueue : Collection {
//    public var startIndex: Int {
//        return 0
//    }
//
//    public var endIndex: Int {
//     return left.count + right.count
//    }
//
//    public func index(after i: Int) -> Int {
//        precondition(i < endIndex)
//        return i + 1
//    }
//
//    public subscript(positon: Int) -> Element {
//        precondition((0..<endIndex).contains(positon), "Index out of bounds")
//        if positon < left.endIndex {
//            return left[left.count - positon - 1]
//        } else {
//            return right[positon - left.count]
//        }
//    }
//}
//
extension FIFOQueue : ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        left = elements.reversed()
        right = []
    }
}

//let dic = ["a": "b"]
//dic.first
//let a = ""
//let i = a.startIndex
//a[i]
//
//let good = "good"
//let index = good.endIndex
//good[index..<index]
//
//extension Substring {
//    var nextWordRange: Range<Index> {
//        let start = drop(while: {$0 == " "})
//        let end = start.firstIndex(where: {$0 == " "}) ?? endIndex
//        return start.startIndex..<end
//    }
//}
//
//struct Words: Collection {
//    let string: Substring
//    let startIndex: WordsIndex
//
//    init(_ s: String) {
//        self.init(s[...])
//    }
//
//    private init(_ s: Substring) {
//        self.string = s
//        self.startIndex = WordsIndex(string.nextWordRange)
//    }
//
//    var endIndex: WordsIndex {
//        let e = string.endIndex
//        return WordsIndex(e..<e)
//    }
//}
//
//extension Words {
//    subscript(index: WordsIndex) -> Substring {
//        return string[index.range]
//    }
//}
//
//extension Words {
//    func index(after i: WordsIndex) -> WordsIndex {
//        guard i.range.upperBound < string.endIndex else {return endIndex}
//        let remainder = string[i.range.upperBound...]
//        return WordsIndex(remainder.nextWordRange)
//
//    }
//}
//
//extension Words {
//    subscript(range: Range<WordsIndex>) -> Words {
//      let start = range.lowerBound.range.lowerBound
//      let end = range.upperBound.range.upperBound
//        return Words(string[start..<end])
//    }
//}
//
//struct WordsIndex: Comparable {
//    fileprivate let range: Range<Substring.Index>
//    fileprivate init(_ value: Range<Substring.Index>) {
//      self.range = value
//    }
//
//    static func < (lhs: Words.Index, rhs: Words.Index) -> Bool {
//        return lhs.range.lowerBound < rhs.range.lowerBound
//    }
//
//    static func == (lhs: Words.Index, rhs: Words.Index) -> Bool {
//        return lhs.range.lowerBound == rhs.range.lowerBound
//    }
//}
//
//let words = Words("hello world text")

//let cities = ["1", "2", "3", "4", "5", "6"]
//let slice = cities[2...4]
//slice.startIndex
//cities.indices

//struct PrefixIterator<Base: Collection>: IteratorProtocol, Sequence {
//    let base: Base
//    var offset: Base.Index
//
//    init(_ base: Base) {
//        self.base = base
//        self.offset = base.startIndex
//    }
//
//    mutating func next() -> Base.SubSequence? {
//        guard offset != base.endIndex else {
//            return nil
//        }
//        base.formIndex(after: &offset)
//        return base.prefix(upTo: offset)
//    }
//}
//
//let number = [1, 2, 3]
//Array(PrefixIterator(number))
//
//extension FIFOQueue : MutableCollection {
//
//    public var startIndex: Int {
//        return 0
//    }
//
//    public var endIndex: Int {
//        return left.count + right.count
//    }
//
//    public func index(after i: Int) -> Int {
//        precondition(i < endIndex)
//        return i + 1
//    }
//
//    public subscript(position: Int) -> Element {
//        get {
//            precondition((0..<endIndex).contains(position), "Index out of bounds")
//            if position < left.endIndex {
//                return left[left.count - position - 1]
//            } else {
//                return right[position - left.count]
//            }
//        }
//        set {
//            precondition((0..<endIndex).contains(position), "index out if bounds")
//            if position < left.endIndex {
//                left[left.count - position - 1] = newValue
//            } else {
//                return right[position - left.count] = newValue
//            }
//        }
//    }
//}
//
//var quqe: FIFOQueue = ["li", "bo", "is", "man"]
//quqe.first
//quqe[0] = "plum"
//quqe.first
//
//extension FIFOQueue : RangeReplaceableCollection {
//    mutating func replaceSubrange<C: Collection>(_ subrange: Range<Int>, with newElements: C) where C.Element == Element {
//        right = left.reversed() + right
//        left.removeAll()
//        right.replaceSubrange(subrange, with: newElements)
//    }
//}

//let a = ["one", "two"]
//a.find

//var s = ["o", "2"]
//switch s.firstIndex(of: "o") {
//case let id?:
//    s.remove(at: id)
//case nil:
//    break
//}
//print(s)

//let sanc = Scanner(string: "lisa123")
//var user: NSString?
//let apha = CharacterSet.alphanumerics
//if sanc.scanCharacters(from: apha, into: &user), let name = user {
//    print(name)
//}

//for i in 0..<10 where i % 2 == 0 {
//    print(i)
//}

//let stringNumber = ["1", "2", "two"]
//let other = stringNumber.map(Int.init)
//other.count
//print(other)

//for case let i? in other {
//    print(i)
//}

//let i = 2
//if case 1...3 = i {
//    print("contain")
//}

//struct Pattern {
//    let s: String
//}
//
//func ~=(patter: Pattern, value: String) -> Bool {
//    return value.range(of: patter.s) != nil
//}
//
//let s = "Tylor Swift"
//if case Pattern(s: "wift") = s {
//    print("contain swoift")
//}

//let string: String? = "hello"
//let result = string?.uppercased()?.lowercased()
//print(string)
//debugPrint(result)
//extension Int {
//    var half: Int? {
//        guard self < -1 || self > 1 else {
//            return nil
//        }
//        return self / 2
//    }
//}
//
//let value = 20.half?.half?.half
//print(value)


//var a: Int? = 3
//a? = 2
//print(a)
//
//var b: Int? = nil
//b? = 2
//print(b)

//let s1: String?? = nil
//(s1 ?? "inner") ?? "outer"
//
//let s2: String?? = .some(nil)
//s2 ?? "iner" ?? "outer"

//let s3: String? = "d"
//let s = s3 ?? "x"

//let s: Double? = 4
//print("s\(String(describing: s))")


//infix operator ???:NilCoalescingPrecedence
//
//public func ???<T>(optional: T?, defaultValue: @autoclosure ()->String ) -> String {
//    switch optional {
//    case let value?:
//        return String(describing: value)
//    default:
//        return defaultValue()
//    }
//}
//
//
//let sd =  s ??? "de"

//let s: Int? = 1
//s.map {String($0)}


//let s = [1, nil, 2].map {_ in return 2 }
//print(s)
let stringNumber = ["1", "2", nil]
//let x = stringNumber.first
//let o = x.map { Int($0) }
//print(x)
stringNumber.lazy.map { $0}

func flatten<S: Sequence, T>(source: S) -> [T] where S.Element == T? {
    let filtered = source.lazy.filter { $0 != nil }
    return filtered.map { $0! }
}


let d = flatten(source: stringNumber)

extension Sequence {
    func flatMap<U>(transform: (Element) -> U?) -> [U] {
        return flatten(source: self.lazy.map(transform))
    }
}
