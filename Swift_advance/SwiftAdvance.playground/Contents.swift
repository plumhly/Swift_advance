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
//let stringNumber = ["1", "2", nil]
//let x = stringNumber.first
//let o = x.map { Int($0) }
//print(x)
//stringNumber.lazy.map { $0}
//
//func flatten<S: Sequence, T>(source: S) -> [T] where S.Element == T? {
//    let filtered = source.lazy.filter { $0 != nil }
//    return filtered.map { $0! }
//}
//
//
//let d = flatten(source: stringNumber)
//
//extension Sequence {
//    func flatMap<U>(transform: (Element) -> U?) -> [U] {
//        return flatten(source: self.lazy.map(transform))
//    }
//}

//let a:[Int?] = [1, 32, nil]
//let b:[Int?] = [1, 2, nil]
//a == b
//let s = a.elementsEqual(b) { $0 == $1 }
//s]

//infix operator !!
//
//func !!<T>(wrapped: T?, failureText: @autoclosure () -> String ) -> T {
//    if let x = wrapped { return x }
//    fatalError(failureText())
//}
//
//let s: String = "dfdf"
//Int(s)
//
//infix operator !?
//
//func !?<T>(war: T?, nilDefault: () ->(value: T, text: String)) -> T {
//    assert(war != nil, nilDefault().text);
//    return war ?? nilDefault().value;
//}
//
//var out: String? = nil
//out?.write("dd")!?"dfdfdf"

//let s: String? = "jl"
//let d = s ?? "f"

//func incre(x: inout Int) {
//    x += 1
//}
//
//var i = 1
//incre(x: &i)
//
//var s: Int! = 1
//incre(x: &s)

// 5 结构体和类
//let mutable: NSMutableArray = [1, 2, 3]
//for _ in mutable {
//    mutable.removeLastObject()
//}

//var mutable = [1, 2, 3]
//for _ in mutable {
//    mutable.removeLast()
//}

//struct My {
//    let name: String
//    let age: Int
//}
//
//extension My {
//    init(_ myName: String, age: Int) {
//        self.name = myName;
//        self.age = age;
//    }
//}

//var names: [String] = [] {
//    didSet {
//        print(names)
//    }
//}
//
//names.append("d")
//names.append("2")

//struct Point {
//    var x: Int
//    var y: Int
//}
//
//struct Size {
//    var width: Int
//    var height: Int
//}
//
//struct Rectangle {
//    var origin: Point
//    var size: Size
//}

//extension Point {
//    static let zero = Point(x: 0, y: 0)
//}
//
//extension Rectangle {
//    init(x: Int, y: Int, width: Int, height: Int) {
//        origin = Point(x: x, y: y)
//        size = Size(width: width, height: height)
//    }
//}
//
//func +(lhs: Point, rhs: Point) -> Point {
//    return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
//}
//
//extension Rectangle {
//    mutating func translate(by offset: Point) {
//        origin = origin + offset
//    }
//}
//
//extension Rectangle {
//    func translated(by offset: Point) -> Rectangle {
//        var copy = self
//        copy.translate(by: offset)
//        return copy
//    }
//}
//
//final class Box<A> {
//    var unbox: A
//    init(_ value: A) {
//        unbox = value
//    }
//}
//
//
//struct MyData {
//    var _data: Box<NSMutableData>
//    var _dataForWriting: NSMutableData {
//      mutating get {
//        if !isKnownUniquelyReferenced(&_data) {
//            _data = Box(_data.unbox.mutableCopy() as! NSMutableData)
//            print("Making a copy")
//        }
//            return _data.unbox
//        }
//    }
//    init(_ data: NSData) {
//        _data = Box(data.mutableCopy() as! NSMutableData)
//    }
//
//    init() {
//        _data = Box(NSMutableData())
//    }
//}

//let theData = NSData(base64Encoded: "wAEP/w==")!
//print(theData == nil)
//var x = MyData(theData)
//let y = x
//y._data === x._data

//extension MyData {
//   mutating func append(_ byte: UInt8) {
//        var mutableByte = byte
//        _dataForWriting.append(&mutableByte, length: 1)
//    }
//}
//
//x.append(0x55)
//y._data
//x._data
//var d = NSMutableData()
//isKnownUniquelyReferenced(&d)


//var d = Box(NSMutableData())
//isKnownUniquelyReferenced(&d)

//var bytes = MyData()
//var copy = bytes
//
//for byte in 0..<5 as CountableRange<UInt8> {
//    print("Apping 0x\(String(byte, radix: 16))")
//    bytes.append(byte)
//}
//
//var ns = NSMutableString(string: "first")
//var array: [Any] = [1,ns]
//var other = array
//array.append("3")
//ns.append("d")
//other[1]
//array[1]

final class Empty {}

struct COWStruct {
    var ref = Empty()
    
     mutating func change() -> String {
        if isKnownUniquelyReferenced(&ref) {
            return "No copy"
        } else {
            return "copy"
        }
    }
}

//var s = COWStruct()
//s.change()

//var orignal = s
//orignal.change()
//
//var array = [s]
//array[0].change()
//print(array)

//func address(o: UnsafeRawPointer) -> Int {
//    return Int(bitPattern: o)
//}
//
//address(o: &s)
//var dict = ["key": COWStruct()]
//dict["key"]?.change()

//var i = 0
//func uniqueInteger() -> Int {
//    i += 1
//    return i
//}
//
//uniqueInteger()
//uniqueInteger()
//
//let otherFunction: () -> Int = uniqueInteger
//let s = otherFunction()
//
//func uniqueIntegerProvider() -> () -> Int {
//    var i = 0
//    return {
//        i += 1
//        return i
//    }
//}
//
//uniqueIntegerProvider()()
//uniqueIntegerProvider()()
//let otherProvider = uniqueIntegerProvider()
//let ds = otherProvider()

func uniqueIntegerProvider() -> AnyIterator<Int> {
    var i = 0
    return AnyIterator {
        i += 1
        return i
    }
}

//for i in uniqueIntegerProvider() {
//    print(i)
//}
//let fu = uniqueIntegerProvider()
//let one = fu.next()
//let two = fu.next()
//let other = uniqueIntegerProvider()
//other.next()

// 第六章 编码和解码
struct Coordinate : Codable {
    var latitude: Double
    var longitude: Double
}
//
//struct Placemark : Codable {
//    var name: String
//    var coordinate: Coordinate
//}
//
//let places = [Placemark(name: "Berlin", coordinate: Coordinate(latitude: 52, longitude: 13)), Placemark(name: "Cape Town", coordinate: Coordinate(latitude: -34, longitude: 18))]

//do {
//    let encoder = JSONEncoder()
//    var jsonData = try encoder.encode(places)
//    let jsonString = String(decoding: jsonData, as: UTF8.self)
//
//    let decoder = JSONDecoder()
//    let decoded = try decoder.decode([Placemark].self, from: jsonData)
//    type(of: decoded)
//    decoded[0]
//    decoded == places
//} catch {
//    print(error.localizedDescription)
//}


//struct Placemark : Codable {
//    var name: String
//    var coor: Coordinate?
//
//    public init(from decoder: Decoder) throws {
//     let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        do {
//           self.coor = try container.decode(Coordinate.self, forKey: .coor)
//        } catch DecodingError.keyNotFound {
//            print("Eooro")
//            self.coor = nil
//        }
//    }
//}
//
//let validJSONInput = """
//    [ { "name" : "Berlin" }, { "name" : "Cape Town" } ]
//"""
//let invalidJSONInput = """
//[ { "name" : "Berlin", "coor": {} } ]
//"""
//
//let decoder = JSONDecoder()
//let t = try decoder.decode([Placemark].self, from: invalidJSONInput.data(using: .utf8)!)

import CoreLocation

//struct Placemark : Codable {
//    var name: String
//    var coordinate: CLLocationCoordinate2D
//}

//extension Placemark {
//    private enum CodingKeys : String, CodingKey {
//        case name
//        case latitude = "lat"
//        case longitude = "lon"
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//        try container.encode(coordinate.latitude, forKey: .latitude)
//        try container.encode(coordinate.longitude, forKey: .longitude)
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.coordinate = CLLocationCoordinate2D(latitude: try container.decode(Double.self, forKey: .latitude), longitude: try container.decode(Double.self, forKey: .longitude))
//    }
//}

//struct Placemark : Encodable {
//    var name: String
//    var coordinate: CLLocationCoordinate2D
//
//    enum CodingKeys: CodingKey {
//        case name
//        case coordinate
//    }
//
//    private enum CoodinateCodingKeys : CodingKey {
//        case latitude
//        case longitude
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//
//        var coordinateContainer = container.nestedContainer(keyedBy: CoodinateCodingKeys.self, forKey: .coordinate)
//
//        try coordinateContainer.encode(coordinate.longitude, forKey: .longitude)
//        try coordinateContainer.encode(coordinate.latitude, forKey: .latitude)
//    }
//}


//extension CLLocationCoordinate2D : Codable {}


//struct Placemark : Codable {
//    var name: String
//    private var _coordinate: Coordinate
//
//    var coordinate: CLLocationCoordinate2D {
//        get {
//            return CLLocationCoordinate2D(latitude: _coordinate.latitude, longitude: _coordinate.longitude)
//        }
//
//        set {
//            _coordinate = Coordinate(latitude: newValue.latitude, longitude: newValue.longitude)
//        }
//    }
//
//    private enum CodingKeys: String, CodingKey {
//        case name
//        case _coordinate = "coordinate"
//    }
//}

//enum Either<A: Codable, B: Codable>: Codable {
//    case left(A)
//    case right(B)
//
//    private enum CodingKeys: CodingKey {
//        case left
//        case right
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        switch self {
//        case .left(let value):
//            try container.encode(value, forKey: .left)
//
//        case .right(let value):
//            try container.encode(value, forKey: .right)
//        }
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        if let leftValue = try container.decodeIfPresent(A.self, forKey: .left) {
//            self = .left(leftValue)
//        } else {
//            let rightValue = try container.decode(B.self, forKey: .right)
//            self = .right(rightValue)
//        }
//    }
//}

//let values: [Either<String, Int>] = [.left("plum"), .right(43)]
//
//do {
//    let encoder = PropertyListEncoder()
//    encoder.outputFormat = .xml
//    let xmlData = try encoder.encode(values)
//    let xmlString = String(decoding: xmlData, as: UTF8.self)
//    print(xmlString)
//
//    let decoder = PropertyListDecoder()
//    let decoded = try decoder.decode([Either<String, Int>].self, from: xmlData)
//    print(decoded)
//
//} catch {
//    print("Error")
//}

// 7 函数

//let v: String? = "nil"
//let s = v.map {_ in
//    return "d"
//}
//"d".localizedStandardCompare("d")
//"d".localizedCompare("d")

//@objcMembers
//final class Person: NSObject {
//
//    let first: String
//    let last: String
//    let yearOfBirth: Int
//    init(first: String, last: String, yearOfBirth: Int) {
//        self.first = first
//        self.last = last
//        self.yearOfBirth = yearOfBirth
//    }
//
//}
//
//let people = [Person(first: "Emily", last: "Young", yearOfBirth: 2002), Person(first: "David", last: "Gray", yearOfBirth: 1991), Person(first: "Robert", last: "Barnes", yearOfBirth: 1985), Person(first: "Ava", last: "Barnes", yearOfBirth: 2000), Person(first: "Joanne", last: "Miller", yearOfBirth: 1994), Person(first: "Ava", last: "Barnes", yearOfBirth: 1998),]
//
//let lastDescriptor = NSSortDescriptor(key: #keyPath(Person.last), ascending: true, selector: #selector(NSString.localizedStandardCompare(_:)))
//
//let firstDescriptor = NSSortDescriptor(key: #keyPath(Person.first),ascending: true, selector: #selector(NSString.localizedStandardCompare(_:)))
//
//let yearDescriptor = NSSortDescriptor(key: #keyPath(Person.yearOfBirth), ascending: true)
//
//let descriptors = [lastDescriptor, firstDescriptor, yearDescriptor]
//(people as NSArray).sortedArray(using: descriptors)
//print(people)
//
//var files: [NSString] = ["one", "file.h", "file.c", "test.h"]
//
//people.sorted { p0, p1 in
//    let left = [p0.last, p0.first]
//    let right = [p1.last, p1.first]
//    return left.lexicographicallyPrecedes(right) { $0.localizedStandardCompare($1) == .orderedAscending }
//
//}
//
//typealias SortDescriptor<Value> = (Value, Value) -> Bool
//
//func sortDescriptor<Value, Key>(
//    key: @escaping (Value) -> Key, by areInIncreasingOrder: @escaping (Key, Key) -> Bool) -> SortDescriptor<Value> {
//    return { areInIncreasingOrder(key($0), key($1)) }
//}
//
//let sortByYearAlt: SortDescriptor<Person> = sortDescriptor(key: { $0.yearOfBirth }, by: <)
//people.sorted(by: sortByYearAlt)
//
//func sortDescriptor<Value, Key>(key: @escaping (Value) -> Key)  -> SortDescriptor<Value> where Key: Comparable {
//    return { key($0) < key($1) }
//}
//
//let sortByYearAlt1: SortDescriptor<Person> = sortDescriptor {
//    $0.yearOfBirth
//}
//people.sorted(by: sortByYearAlt1)
//
//
//func sortDescriptor<Value, Key>(
//    key: @escaping (Value) -> Key,
//    ascending: Bool = true,
//    by comparator: @escaping (Key) -> (Key) -> ComparisonResult
//    ) -> SortDescriptor<Value> {
//    return {
//        lhs, rhs in
//        let order: ComparisonResult = ascending ? .orderedAscending : .orderedDescending
//        return comparator(key(lhs))(key(rhs)) == order
//
//    }
//}
//
//let sortByFirstName: SortDescriptor<Person> = sortDescriptor(key: { $0.first }, by: String.localizedStandardCompare)

//struct My {
//    func name() -> String {
//        return "s"
//    }
//}
//
//let ssdd = My.name
//
//let myd = ssdd(My())()
//people.sorted(by: sortByFirstName)


//func combine<Value>(sortDescriptors: [SortDescriptor<Value>]) -> SortDescriptor<Value> {
//    return {lhs, rhs in
//        for areInIncreasingOrder in sortDescriptors {
//            if areInIncreasingOrder(lhs, rhs) { return true }
//            if areInIncreasingOrder(rhs, lhs) { return false }
//        }
//        return false
//    }
//}
//
//let sortByLastName: SortDescriptor<Person> = sortDescriptor(key: { $0.last }, by: String.localizedStandardCompare)
//
//let combined: SortDescriptor<Person> = combine(sortDescriptors: [sortByLastName, sortByFirstName, sortByYearAlt1])
//people.sorted(by: combined)

//typealias Clousure<A> = (A, A) -> Bool
//infix operator <||>: LogicalDisjunctionPrecedence
//func <||><A>(lhs:@escaping Clousure<A>, rhs:@escaping Clousure<A>) -> Clousure<A> {
//    return {x, y in
//        if lhs(x, y) {
//            return true
//        }
//        if lhs(y, x) {
//            return false
//        }
//
//        if rhs(x, y) {
//            return true
//        }
//        return false;
//    }
//}
//
//
//let combineAlt = sortByLastName <||> sortByFirstName <||> sortByYearAlt1
//
//people.sorted(by: combineAlt)
//
//func lift<A>(_ compare: @escaping (A) -> (A) -> ComparisonResult) -> (A?) -> (A?) -> ComparisonResult {
//    return {lhs in
//        { rhs in
//            switch (lhs, rhs) {
//            case (nil, nil): return .orderedSame
//            case (nil, _): return .orderedAscending
//            case (_, nil): return .orderedDescending
//            case let (l?, r?): return compare(l)(r)
//            }
//        }
//    }
//}
//let compare = lift(String.localizedStandardCompare)
//let result = files.sorted(by: sortDescriptor(key: { $0.pathExtension }, by: compare))
//result
//
//
//class AlertView {
//
//    var buttons: [String]
//    var buttonTapped: ((_ buttonIndex: Int) -> ())?
//
//    init(buttons: [String] = ["OK", "Cancel"]) {
//        self.buttons = buttons }
//
//    func fire() { buttonTapped?(1) }
//}
//
//struct TapLogger {
//    var taps: [Int] = []
//
//    mutating func logTap(index: Int) { taps.append(index) }
//
//}
//
//let alert = AlertView()
//var logger = TapLogger()
//
//alert.buttonTapped = logger.logTap


//struct Point {
//    var x: Double
//    var y: Double
//    private(set) lazy var distanceFromOrigin: Double = (x*x + y*y).squareRoot()
//
//    init(x: Double, y: Double) {
//        self.x = x
//        self.y = y
//    }
//}

//var jap: [String: Any] = [
//    "coordinates": [
//        "latitude": 35.0,
//        "longitude": 139.0
//    ]
//]

//(jap["coordinates"] as? [String: Double])?["latitude"] = 20



//extension Dictionary {
//    subscript<Result>(key: Key, as type: Result.Type) -> Result? {
//        get {
//            return self[key] as? Result
//        }
//
//        set {
//            guard let value = newValue as? Value else {
//                return
//            }
//            self[key] = value
//        }
//    }
//}
//
//jap["coordinates", as: [String : Double].self]?["latitude"] = 98.0
//jap["coordinates"]

/*
struct Address {
    var street: String
    var city: String
    var zipCode: Int
}

struct Person {
    let name: String
    var address: Address
}


let streetKeyPath = \Person.address.street
let namePath = \Person.name
print(streetKeyPath)
print(namePath)
let simpleAddress = Address(street: "a", city: "b", zipCode: 3)
var lisa = Person(name: "lisa", address: simpleAddress)
lisa[keyPath: streetKeyPath] = "c"

let countkeyPath = namePath.appending(path: \.count)
lisa[keyPath: countkeyPath]


extension NSObjectProtocol where Self: NSObject {
    func observe<A, Other>(_ keyPath: KeyPath<Self, A>, writeTo other: Other, _ otherKeyPath: ReferenceWritableKeyPath<Other, A>) -> NSKeyValueObservation where A: Equatable, Other: NSObjectProtocol{
        return observe(keyPath, options: .new, changeHandler: { (_, change) in
            guard let newValue = change.newValue, other[keyPath: otherKeyPath] != newValue else {
                return
            }
            other[keyPath: otherKeyPath] = newValue
        })
    }
}


extension NSObjectProtocol where Self: NSObject {
    func bind<A, Other>(_ keyPath: ReferenceWritableKeyPath<Self, A>, to other: Other, _ otherKeyPath: ReferenceWritableKeyPath<Other, A>) -> (NSKeyValueObservation, NSKeyValueObservation) where A: Equatable, Other: NSObject {
        let one = observe(keyPath, writeTo: other, otherKeyPath)
        let two = other.observe(otherKeyPath, writeTo: self, keyPath)
        return (one, two)
    }
}


final class Sample: NSObject {
    @objc dynamic var name: String = ""
}

class MyObj: NSObject {
    @objc dynamic var test: String = ""
}

let sample = Sample()
let test = MyObj()

let ob = sample.bind(\Sample.name, to: test, \.test)

sample.name = "plum"
test.test
test.test = "libo"
sample.name


func transform(_ input: Int, with f:((Int) -> (Int))?) -> Int {
    print("使用可选值重载")
    guard let f = f else {
        return input;
    }
    return f(input);
}


func transform(_ input: Int, with f:(Int) -> (Int)) -> Int {
    print("使用可选值重载")
    return f(input);
}


extension Array {
    func all(matching predicate: (Element) -> Bool) -> Bool {
//        return self.lazy.filter({!predicate($0)}).isEmpty
        return withoutActuallyEscaping(predicate, do: { type in
            self.lazy.filter({!type($0)}).isEmpty
        })
    }
}

let areAllEven = [1 ,2].all { $0 % 2 == 0 }
print(areAllEven)
*/

// 8 字符串

//"e" + "u+009e"
//let songle = "P\u{00E9}mom"
//let songle1 = "Pe\u{0301}mom"
//songle.count
//songle1.count
//
//songle.utf16.count
//songle1.utf16.count
//
//let nsSingle = songle as NSString
//let nsDou = songle1 as NSString
//
//nsSingle.length
//nsDou.length
//
//nsSingle == nsDou
//let a = nsSingle.compare(songle1)
//
//let str = "sfdfdfd"
//str.indices
//str.utf8CString

let pokemon = "Poke\u{301}mon"

if let ac = pokemon.unicodeScalars.index(of: "\u{301}") {
    ac.samePosition(in: pokemon)
}

let sentence = """
The quick brown fox jumped \
over the lazy dog.
"""
var words: [String] = []

sentence.enumerateSubstrings(in: sentence.startIndex..., options: .byWords) { (word, range, _, _) in
    guard let word = word else {
        return
    }
    words.append(word)
}

let lowCa = ("a" as Character)..."z"

// not conform Stridable Protocol
//for i in lowCa {
//    print(i)
//}

//extension Unicode.Scalar: Strideable {
//    public typealias Stride = Int
//
//    public func distance(to other: Unicode.Scalar) -> Int {
//        return Int(other.value) - Int(self.value)
//    }
//
//    public func advanced(by n: Int) -> Unicode.Scalar {
//        return Unicode.Scalar(UInt32(Int(value) + n))!
//    }
//}
//
//let lowCb = ("a" as UnicodeScalar)..."z"
//Array(lowCb.map(Character.init))
//
//var s = ""
//let numbers = [1, 2, 3]
//print(numbers, to: &s)
//s

//var s = ""
//_playgroundPrintHook = { text in
//    s += text
//}
//
//print("plum")
//s

//struct PlumSteam: TextOutputStream {
//    var buffer: [String] = []
//    mutating func write(_ string: String) {
//        buffer.append(string)
//    }
//}
//
//var st = PlumSteam()
//print("libo", to: &st)
//print("plum", to: &st)
//print(st)
//
//struct SlowSteamer: TextOutputStreamable, ExpressibleByArrayLiteral {
//    var contents: [String]
//    init(arrayLiteral elements: String...) {
//        contents = elements
//    }
//
//    func write<Target: TextOutputStream>(to target: inout Target) {
//        for x in contents {
//            target.write(x)
//            target.write("\n")
//            sleep(1)
//        }
//    }
//}
//
//let slow: SlowSteamer = [
//    "li",
//    "bo",
//    "plum"
//]
//
//print(slow)
//
//
//struct StdErr: TextOutputStream {
//    mutating func write(_ string: String) {
//        guard !string.isEmpty else {
//            return
//        }
//
//        fputs(string, stderr)
//    }
//}
//
//var stand = StdErr()
//print("mo", to: &stand)
//stand

// 错误处理
//enum Result<A, ErrorType: Error> {
//    case failure(ErrorType)
//    case success(A)
//}
//
//enum FileError: Error {
//    case fileDoesNotExist
//    case noPermission
//}
//
//enum ParseError: Error {
//    case wrongEncoding
//    case warning(line: Int, message: String)
//}



//CustomNSError
//LocalizedError

//extension Collection {
//    func all(matching predicate: (Element) -> Bool) -> Bool {
//        for element in self {
//            guard predicate(element) else {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//
//func checkPrimes2(_ numbers: [Int]) -> Bool {
//    return numbers.all { $0 > 0 }
//}

//泛型
//func log<View: UIView>(_ view: View) {
//    print("it's a \(type(of: view)), frame:\(view.frame)")
//}
//
//func log(_ view: UILabel) {
//    let text = view.text ?? "(empty)"
//    print("it's a label; text:\(text)")
//
//}
//
//
//let label = UILabel(frame: CGRect(x: 0, y: 0, width: 23, height: 30))
//label.text = "plum"
////log(label)
//
//let view = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: 30))
////log(view)
//
//for view in [label, view] {
//    log(view)
//}
//
//precedencegroup ExponentiationPrecedence {
//    associativity: left
//    higherThan: MultiplicationPrecedence
//}
//
//infix operator **: ExponentiationPrecedence
//func **(lhs: Double, rhs: Double) -> Double {
//    return pow(lhs, rhs)
//}
//
//func **(lhs: Float, rhs: Float) -> Float {
//    return pow(lhs, rhs)
//}
//
//2.0 ** 3.0
//
//func **<I: BinaryInteger>(lhs:I, rhs: I) -> I {
//    let result = Double(Int64(lhs)) ** Double(Int64(rhs))
//    return I(result)
//}
//
//let result: Int = 2 ** 3
//
//extension Sequence where Element: Equatable {
//    func isSubset(of other: [Element]) -> Bool {
//        for element in self {
//            guard other.contains(element) else {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//let one = [1, 2]
//let two = [1, 2, 4, 5]
//one.isSubset(of: two)
//
//extension Sequence where Element: Hashable {
//    func isSubset(of other: [Element]) -> Bool {
//        let otherSet = Set(other)
//        for element in self {
//            guard otherSet.contains(element) else {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//extension Sequence where Element: Hashable {
//    func isSubset<S: Sequence>(of other: S) -> Bool where S.Element == Element {
//        let otherSet = Set(other)
//        for element in self {
//            guard otherSet.contains(element) else {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//[5, 4, 3].isSubset(of: 1...10)
//
//extension Sequence {
//    func isSubset<S: Sequence>(of other: S, by areEquivalent: (Element, S.Element) -> Bool) -> Bool {
//        for element in self {
//            guard other.contains(where: { areEquivalent(element, $0) }) else {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//let bo = [[1, 2]].isSubset(of: [[1, 2] as [Int], [2, 4]]) { $0 == $1 }
//bo
//
//extension Array {
//    func binarySearch(for value: Element, areInIncreasing: (Element, Element) -> Bool) -> Int? {
//        var left = 0
//        var right = count - 1
//        while left <= right {
//            let mid = (left + right) / 2
//            let candicate = self[mid]
//            if areInIncreasing(candicate, value) {
//                left = mid + 1
//            } else if areInIncreasing(value, candicate) {
//                right = mid - 1
//            } else {
//                return mid
//            }
//
//        }
//        return nil
//    }
//}


//extension RandomAccessCollection where Index == Int, IndexDistance == Int {
//    public func binarySearch(for value: Element, areInIncreasingOrder: (Element, Element) -> Bool) -> Index? {
//        var left = 0
//        var right = 0
//        while left <= right {
//            let mid = (left + right) / 2
//            let candicate = self[mid]
//            if areInIncreasingOrder(candicate, value) {
//                left = mid + 1
//            } else if areInIncreasingOrder(value, candicate) {
//                right = mid - 1
//            } else {
//                return mid
//            }
//
//        }
//        return nil
//    }
//}

//extension RandomAccessCollection {
//    public func binarySearch(for value: Element, areInIncreasingOrder: (Element, Element) -> Bool) -> Index? {
//        guard !isEmpty else {
//            return nil;
//        }
//        var left = startIndex
//        var right = index(before: endIndex)
//        while left <= right {
//            let distan = distance(from: left, to: right)
//            let mid = index(left, offsetBy: distan / 2)
//            let candicate = self[mid]
//            if areInIncreasingOrder(candicate, value) {
//                left = index(after: mid)
//            } else if areInIncreasingOrder(value, candicate) {
//                right = index(before: mid)
//            } else {
//                return mid
//            }
//
//        }
//        return nil
//    }
//}
//
//
//let a = ["a", "b", "c", "d", "e", "f", "g",]
//let r = a.reversed()
//r.binarySearch(for: "g", areInIncreasingOrder: >) == r.startIndex
//
//let slice = a[2...5]
//slice.startIndex

// 协议

struct ConstantIterator: IteratorProtocol {
    mutating func next() -> Int? {
        return 1
    }
}

//let iterator: IteratorProtocol = ConstantIterator()

//class IteratorStore<I: IteratorProtocol> where I.Element == Int {
//    var iterator: I
//    init(iterator: I) {
//        self.iterator = iterator
//    }
//}
//
//class IntIterator {
//    var nextImpl:() -> Int?
//    init<I: IteratorProtocol>(_ iterator: I) where I.Element == Int {
//        var iteratorCopy = iterator
//        self.nextImpl = { iteratorCopy.next() }
//    }
//}
//
//var iter = IntIterator(ConstantIterator())
//
//extension IntIterator: IteratorProtocol {
//    func next() -> Int? {
//        return nextImpl()
//    }
//}
//
//class AnyIterator<A>: IteratorProtocol {
//    var nextImpl: () -> A?
//    init<I: IteratorProtocol>(_ iterator: I) where I.Element == A {
//        var iter = iterator
//        nextImpl = { iter.next() }
//    }
//
//    func next() -> A? {
//        return nextImpl()
//    }
//}


class IteratorBox<Element>: IteratorProtocol {
    func next() -> Element? {
        fatalError()
    }
}

class IteratorBoxHelper<I: IteratorProtocol> {
    var iterator: I
    init(iterator: I) {
        self.iterator = iterator
    }
    func next() -> I.Element? {
        return iterator.next()
    }
}

//let s = IteratorBoxHelper(iterator: ConstantIterator())
//
//class IntergerRef: NSObject {
//    let int: Int
//    init(_ int: Int) {
//        self.int = int
//    }
//}
//
//func ==(l: IntergerRef, r: IntergerRef) -> Bool {
//    return l.int == r.int
//}
//
//do {
//    let one = IntergerRef(1)
//    let other = IntergerRef(1)
//    one == other
//}
//
//
//do {
//    let one: NSObject = IntergerRef(1)
//    let other: NSObject = IntergerRef(1)
//    one == other
//}
//

func f<C: CustomStringConvertible>(_ x: C) -> Int {
    return MemoryLayout.size(ofValue: x)
}

func g(_ x: CustomStringConvertible) -> Int {
    return MemoryLayout.size(ofValue: x)
}

f(5)
g(5)
MemoryLayout<UITableViewDelegate>.size

let z = UnsafeMutablePointer<Int>.allocate(capacity: 2)
