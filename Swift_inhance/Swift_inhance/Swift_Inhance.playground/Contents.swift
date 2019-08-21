import UIKit
import PlaygroundSupport

var str = "Hello, playground"

// MARK: - String
do {
    let cafe1 =  "e\u{301}Cafe"
    let cafe2 = "Café"
    print(cafe1 == cafe2)
    
    let name = "Marie Cure"
    let firstNameIndex = cafe1.firstIndex(of: "f") ?? cafe1.endIndex
    let firstName = cafe1[..<firstNameIndex]
    
    type(of: name)
    type(of: firstName)
    
    Array(cafe1.utf8)
    Array(cafe1.utf16)
    Array(cafe1.utf8[..<firstNameIndex])
    Array(cafe1.utf16[..<firstNameIndex])
    cafe1.count
    cafe2.count
    
    let cafe = "Cafe\u{301} du 🌍"
    let cf = cafe as NSString
    
    cf.length
    cafe.utf16.count
    cafe.count
    
    cafe.unicodeScalars.count
    print(Array(cafe.unicodeScalars))
    
    cafe2.utf8
    cafe2.utf16
    
    let other = "🇵🇷"
    print(Array(other.unicodeScalars))
    print(Array(other.utf16))
    
    let myName = "plum"
    let firstIn = myName.startIndex
    let secondIn = myName.utf16.index(after: firstIn)
    myName[firstIn]
    myName[secondIn]
    secondIn.samePosition(in: myName.utf8)
}

// API
do {
//    let string = String(repeating: "c", count: 8)
//    let string = "abc"
//    let other = "ab"
//    let sub = string.drop(while: {$0 == "a"})
//    print(sub)
//    string.elementsEqual(other)
//    string.starts(with: other)
//    string.max()
//    let splitString = "a,b=,c"
//    splitString.split(separator: ",")

    
    var mapString = "abc"
//    let result = mapString.map {"-\($0)"}
//    let result2 = mapString.lazy.map { value -> String in
//        print("哈哈哈")
//        return "-\(value)"
//    }
//    for i in result2 {
//        print(i)
//    }
//    print(result)
//    print(result2.elements)
//    print(mapString)
//    DispatchQueue.global().async {
//        mapString = "dddd"
//        print(mapString)
//    }
//    DefaultIndices
//    for idx in mapString.indices {
//        print(idx)
//        print(mapString[idx])
//    }
//    print(mapString)
//    PlaygroundPage.current.needsIndefiniteExecution = true
//    let value = "a"..<"c"
//    value.contains("d")
//    mapString.startIndex
}

do {
//    
//    struct MyCollection: BidirectionalCollection {
//        typealias Index = Int
//        func index(after i: MyCollection.Index) -> MyCollection.Index {
//            
//        }
//    }
    
}

// MARK: - SubString
do {
    let rawInput = "126 a.b zzzzzz"
    let numericPrefix = rawInput.prefix(while: { "0"..."9" ~= $0 })
    print(numericPrefix)
    
    func parseAndAddOne(_ s: String) -> Int {
        return Int(s, radix: 10)! + 1
    }
}
