//
//  CustomKeyboard.swift
//  Custom_Keyboard
//
//  Created by sangheon on 2020/12/05.
//

import UIKit
//delegate - 위임

protocol CustomKeyboardDelegate {
    func keyboardTapped(str:String)
}


class CustomKeyboard: UIView {
    
    var delegate:CustomKeyboardDelegate? //끊어지지않고 계속 연결이 남아있을수 있기 때문에(메모리누수) 옵셔널로 지정
    
    
    @IBAction func buttonTapped (_ sender:UIButton) {
        
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
        
        
    }
}
