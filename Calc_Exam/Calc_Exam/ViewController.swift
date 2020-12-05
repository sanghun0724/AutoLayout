//
//  ViewController.swift
//  Calc_Exam
//
//  Created by sangheon on 2020/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    
    @IBOutlet weak var btn4: UIButton!
    
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    
    
    @IBOutlet weak var btn8: UIButton!
    
    
    @IBOutlet weak var btn9: UIButton!
    
    @IBOutlet weak var btn10: UIButton!
    
    @IBOutlet weak var btn11: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //화면이 제대로 구성되기전인 viewDidLoad같은 메소드안에서는 화면구성메소드를 사용하기에는 적절 x
        resultLabel.layer.cornerRadius = 20
        resultLabel.layer.masksToBounds = true     // 둥글게되는 부분 잘른다! 기본적으로 false라 true 로 //clipsToBounds 같은 메소드 !
       
         
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //원만들기
        btn1.layer.cornerRadius = btn1.bounds.width / 2
        btn2.layer.cornerRadius = btn1.bounds.width / 2
        btn3.layer.cornerRadius = btn1.bounds.width / 2
        btn4.layer.cornerRadius = btn1.bounds.width / 2
        btn5.layer.cornerRadius = btn1.bounds.width / 2
        btn6.layer.cornerRadius = btn1.bounds.width / 2
        btn7.layer.cornerRadius = btn1.bounds.width / 2
        btn8.layer.cornerRadius = btn1.bounds.width / 2
        btn9.layer.cornerRadius = btn1.bounds.width / 2
        btn10.layer.cornerRadius = btn1.bounds.width / 2
        btn11.layer.cornerRadius = btn1.bounds.height / 2
        
    }

}

