//: Playground - noun: a place where people can play

import UIKit

let names = ["pula", "ela", "plum"]
var str: String = ""
for name in names.reversed() where name.hasSuffix("a") {
    str = name
    break
}

extension Sequence {
    func last(where predicat: (Iterator.Element) -> Bool) -> Iterator.Element? {
        for item in self.reversed() where predicat(item) {
            return item
            break
        }
        return nil
    }
}

names.last {
    $0.hasSuffix("a")
}

extension Array {
    func accumulate<Result>(_ intialResult: Result, _ nextPartialR:(Result, Element) -> Result) -> [Result] {
        var sun = intialResult
        return map({ item -> Result in
            sun = nextPartialR(sun, item)
            return sun
        })
    }
}

var plums = [1,2,3,4]
var n = plums.accumulate(0) { (resukt, str) -> Int in
    return resukt + str
}

(1..<10).forEach { (item) in
    print(item)
    if item % 2 == 0 {
        return
    }
}

do {
    let slice = [1, 2, 3, 4][1...3]
    type(of: slice)
    let newS = Array(slice)
    let s = newS as NSArray
    for item in s {
        print(type(of: item))
    }
}

extension Dictionary {
   mutating func merge<S>(_ other: S) where S: Sequence, S.Iterator.Element == (key: Key, value: Value) {
        for (k, v) in other {
            self[k] = v
        }
    }
    
    init<S: Sequence>(_ sequence: S) where S.Iterator.Element == (key: Key, value: Value) {
        self = [:]
        self.merge(sequence)
    }
    
    func mapValues<NewValue>(transform: (Value) -> NewValue)
        -> [Key:NewValue] {
            return Dictionary<Key, NewValue>(map { (key, value) in
                return (key, transform(value))
            })
    }
}

var d = ["1": 1, "3": 3]
var ds = d.mapValues { (value) in
    return "\(value)"
}
print(ds)


