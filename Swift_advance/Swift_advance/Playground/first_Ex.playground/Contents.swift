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