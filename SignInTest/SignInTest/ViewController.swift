//
//  ViewController.swift
//  SignInTest
//
//  Created by sangheon on 2020/12/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var passwordError: UILabel!
    
    var emailErrorHeight:NSLayoutConstraint!
    var passwordErroHeight:NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //textfield 값이 변경되는걸 캐치하는게 없음
        
        emailTextField.addTarget(self, action: #selector(textFieldEdited), for: UIControl.Event.editingChanged)
        
        passwordTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        emailErrorHeight = emailError.heightAnchor.constraint(equalToConstant: 0) // isActive 까지 //contraint 설정값은 옵셔널로 받을수 있음
        passwordErroHeight = passwordError.heightAnchor.constraint(equalToConstant: 0)
    }

    @objc func textFieldEdited(textField:UITextField) {
        
        if textField == emailTextField {
            if isValidEmail(email: textField.text) == true {
                // 에러표시 안나와야 함.
                emailErrorHeight.isActive = true
            } else {
                emailErrorHeight.isActive = false // 빨강이 나오게하기
                
            }
            
        } else if textField == passwordTextField {
            if isValidPassword(pw: textField.text) == true {
                passwordErroHeight.isActive = true
            } else {
                
                passwordErroHeight.isActive = false
            }
        }
        
        UIView.animate(withDuration: 0.1) {
            self.view.layoutIfNeeded()
        }
    }
    
    // 정규식? - regular expression

    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx) //self match :정규식에 따라 맞는지?
        return pred.evaluate(with: email) //정규식 맞는지 evaluate BOOl
    }
   
    func isValidPassword(pw: String?) -> Bool {
        if pw!.count < 8 {
            return false
        }
        return true
    }

}

