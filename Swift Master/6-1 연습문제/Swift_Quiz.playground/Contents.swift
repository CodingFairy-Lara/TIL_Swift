import UIKit

/*
 연습문제
 */

// 구구단 출력하기
for dan in 2...9 {
    for
        i in 1...9{
        let num = dan * i
        print(dan, " * ", i, " = ", num)
    }
    print("-------------------")
}

// 3의 배수 발견
for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견 : \(i)")
    }
}

// 반복문, 조건문 활용

for i in 1...5 {
    for j in 1...5 {
        print("🙂", terminator: "")
        if j >= i {
            break
        }
    }
    print()
}
