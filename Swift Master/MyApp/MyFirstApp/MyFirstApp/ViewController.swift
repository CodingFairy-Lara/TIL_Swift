//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hera on 4/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        mainLabel.text = "안녕하세요"
//        mainLabel.backgroundColor = UIColor.yellow
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        mainLabel.textAlignment = NSTextAlignment.right    // 열거형
        
        
    }
    
}

