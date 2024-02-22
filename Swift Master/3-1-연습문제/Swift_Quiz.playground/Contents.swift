import UIKit

var com: Int = Int.random(in: 0...2)
var me: Int = 0
var result: String = "";

if (me == 0 && com == 1) || (me == 1 && com == 2) || (me == 2 && com == 0) {
    result = "당신이 졌습니다."
} else if (me == com) {
    result = "비겼습니다."
} else {
    result = "당신이 이겼습니다."
}

print(result)

//-----------------------------------------------------

var num: Int = Int.random(in: 1...10)
var mynum: Int = 3
var result2: String = "";

if num > mynum {
    result2 = "Up"
} else if num == mynum {
    result2 = "Bingo"
} else {
    result2 = "Down"
}

print(result2)

