//
//  ViewController.swift
//  Switch_Custom1
//
//  Created by sangheon on 2020/12/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var switchBtn: UIButton!
    
    @IBOutlet weak var switchBG: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchBtn.layer.cornerRadius = 50 / 2
        switchBG.layer.cornerRadius = 50 / 2
        // Do any additional setup after loading the view.
    }

    @IBAction func selectedButton(_ sender: Any) {
        if buttonCenterX.constant == 75 {
            buttonCenterX.constant = -75
            switchBG.backgroundColor = .green
        } else {
            buttonCenterX.constant = 75
            switchBG.backgroundColor = .gray
        }
         //0.3초 시간만큼 적용되서 보이게 분할되어서 // 0.3초마다 갱신
        UIView.animate(withDuration: 0.3) {
            
            self.view.layoutIfNeeded()
        }
        
    }
    
}

