//
//  main.swift
//  RandomBingo
//
//  Created by Hera on 4/12/24.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChioce: Int = 0


while true {
    
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChioce = number
            
        }
    }
    //print(myChioce)
    
    if computerChoice > myChioce {
        print("Up")
    } else if computerChoice < myChioce {
        print("Down")
    } else {
        print("Bingo")
        break
    }
    
}

