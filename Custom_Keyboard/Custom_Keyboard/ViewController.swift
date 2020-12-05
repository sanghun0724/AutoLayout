//
//  ViewController.swift
//  Custom_Keyboard
//
//  Created by sangheon on 2020/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //커스텀 키보드 설정 방법
     //   firstTextField.inputView = "커스텀 키보드 뷰"
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil) //xib 파일정보를 불러옴
        
       let myKeyboardView = loadNib?.first as! CustomKeyboard  //키보드 뷰를 불러옴
        
        firstTextField.inputView = myKeyboardView
    }


}

