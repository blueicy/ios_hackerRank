import UIKit

var str = "Hello, playground"

func repeatedString(s: String, n: Int) -> Int {
    let numOfStr = s.count
    let firstLetter:Character = "a"
    var existIndexArr = [Int]()
    var sameNumber = 0
    var resultNumber = 0
    var remain = 0

    for index in s.indices {
        if s[index] == firstLetter {
            sameNumber += 1
            let distance = s.distance(from: s.startIndex, to: index)
            existIndexArr.append(distance)
        }
    }

    resultNumber = sameNumber * (n/numOfStr)
    remain = n%numOfStr
    
    if remain == 0 {
        return resultNumber
    }
    
    for existIndex in existIndexArr {
        if existIndex < remain {
            resultNumber += 1
        } else {
            break
        }

    }

    return resultNumber

}

repeatedString(s: "ceebbcb", n: 817723)


