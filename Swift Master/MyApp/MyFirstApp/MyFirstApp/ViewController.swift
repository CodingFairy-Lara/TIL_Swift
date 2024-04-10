//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hera on 4/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.backgroundColor = UIColor.yellow
//        mainLabel.text = "반가울까요?"
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.text = "안녕하세요"
        
        myButton.backgroundColor = UIColor.gray
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
//        mainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
//        mainLabel.backgroundColor = UIColor.yellow
//        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        mainLabel.textAlignment = NSTextAlignment.right    // 열거형
        
    }
    
}

