
var a = 5
var b = 8

var temp = a
a = b
b = temp

print("The value of a is \(a)")
print("The value of a is \(b)")


var numbers = [45,73, 195, 52]
let computedNumbers =  [ numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[0]*numbers[3] ]
                        
print(computedNumbers)

a = 10
print(a)

let c = 5
print(c)
// c = 1

let pi = 3.14
print(pi)

var randomNumber = Int.random(in: 1...5)
print(randomNumber)

randomNumber = Int.random(in: 1 ..< 5)
print(randomNumber)

var randomNumber2 = Float.random(in: 1 ... 5)
print(randomNumber2)






