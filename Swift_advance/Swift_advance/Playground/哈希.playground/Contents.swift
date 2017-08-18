//: Playground - noun: a place where people can play

import UIKit

struct Person {
    var name: String
    var zipCode: Int
    var birth: Date
}

extension Person: Equatable {
    public static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.zipCode == rhs.zipCode && lhs.birth == rhs.birth
    }
}

extension Person: Hashable {
    var hashValue: Int {
        return name.hashValue ^ zipCode.hashValue ^ birth.hashValue
    }
}

let per = Person(name: "li", zipCode: 2, birth: Date())
let other = per;
let isa = per == other


//验证唯一性

extension Sequence where Iterator.Element:Hashable {
    func unique() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter({
            if seen.contains($0) {
                return false
            } else {
                seen.insert($0)
                return true
            }
        })
    }
}

var aar = [1,2,2,3,4].unique()



