//
//  ViewController.swift
//  UpDownGame
//
//  Created by Hera on 4/16/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택 (1~10)
    var comNumber = Int.random(in: 1...10)
    // 내가 선택한 숫자를 담는 변수
//    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 메인 레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        // 숫자 레이블 ""
        numberLabel.text = ""
        
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // 버튼의 숫자를 가져오기
        guard let numString = sender.currentTitle else { return }
        
        // 숫자 레이블이 변하도록 (선택된 숫자에 따라)
        numberLabel.text = numString
        
        // 선택한 숫자를 변수에 저장 (문자열 -> 정수로 변환하여 저장)
//        guard let num = Int(numString) else { return }
//        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 숫자레이블에 있는 문자열 가져와서(옵셔널 벗기기) 정수로 타입 변환
        guard let myNumber = Int(numberLabel.text!) else { return }
        
        // 컴퓨터의 숫자와 내가 선택한 숫자를 비교하여 메인레이블에 Up / Down / Bingo 출력
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo🤍"
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        // 숫자레이블 ""
        numberLabel.text = ""
        // 컴퓨터 숫자 랜덤으로 다시 선택
        comNumber = Int.random(in: 1...10)
        
    }
    
    
}

