
// 문자열 중에서 한글자를 랜덤으로 뽑아내는 함수
func randomChar(_ str: String) {
    let i = str.count-1;
    let num = Int.random(in: 0...i)
 
    print(Array(str)[num])
}

randomChar("안녕하세요~!");




// 소수 판별 해보기
func getPrime(_ num: Int) {
    for i in 2...num {
        if (num % i == 0 && i < num) {
            print("소수가 아닙니다.")
            break
        }
        else if (i == num) {
            print("소수입니다.")
            break
        }
    }
}

getPrime(76037453)
getPrime(97)




// 팩토리얼 함수 만들기
func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

// 사용 예시
var n = 6;
let result = factorial(n)
print("\(n)의 팩토리얼은 \(result)입니다.")
