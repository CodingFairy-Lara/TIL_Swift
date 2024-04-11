//
//  ViewController.swift
//  RPSGame
//
//  Created by Hera on 4/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice: Rps = Rps.rock
    
    // 앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. 첫번째/두번째 이미지 뷰에 준비(묵) 이미지를 띄워야 함.
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2. 첫번째/두번째 레이블에 "준비"라고 문자열를 띄워야 함.
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위바위보를 선택해서 그 정보를 저장해야 함
        
        //        guard let title = sender.currentTitle else {
        //            return
        //        }
        
        // (선택) 버튼의 문자를 가져옴
        let title = sender.currentTitle!
        print(title)
        
        switch title {
        case "가위":
            // 가위 열거형을 만들어서 저장
            myChoice = Rps.scissors
        case "바위":
            // 바위 열거형을 만들어서 저장
            myChoice = Rps.rock
        case "보":
            // 보 열거형을 만들어서 저장
            myChoice = Rps.paper
        default:
            break
        }
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2. 컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        // 3. 내가 랜덤 선택한 것을 이미지뷰에 표시
        // 4. 내가 랜덤 선택한 것을 레이블에 표시
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        // 5. 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 이겼는지 졌는지 판단 및 출력
        if comChoice == myChoice {
            mainLabel.text = "비겼습니다."
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼습니다."
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼습니다."
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼습니다."
        } else {
            mainLabel.text = "졌습니다."
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        //        1. 컴퓨터의 이미지뷰에 준비 표시
        //        2. 컴퓨터의 레이블에 준비 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        
        //        3. 나의 선택 이미지뷰에 준비 표시
        //        4. 나의 선택 레이블에 준비 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "준비"
        
        //        5. 메인 레이블 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        
        //        6. 컴퓨터가 다시 랜덤 가위바위보를 선택하고 저장
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        
    }
    
    
}

