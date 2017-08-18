//: Playground - noun: a place where people can play

import UIKit


let randoms = sequence(first: 100) { (number: UInt32) -> UInt32? in
    let newv = arc4random_uniform(number)
    guard newv > 0 else {
        return nil
    }
    return newv
}

Array(randoms)

let randon2 = sequence(state: (0, 1)) { (state:inout (Int, Int)) -> Int? in
    let uper = state.0
    state = (state.1, state.0 + state.1)
    return uper
}

Array(randon2.prefix(10))

extension Sequence where Iterator.Element: Equatable, SubSequence: Sequence, SubSequence.Iterator.Element == Iterator.Element{
    func headerMirrorsTail(_ n: Int) -> Bool {
        let head = self.prefix(n)
        let tail = suffix(n).reversed()
        return head.elementsEqual(tail)
    }
}

[1,2,4,3,2,1].headerMirrorsTail(2)



