//
//  FloatingButtonListViewController.swift
//  Floating_Button
//
//  Created by sangheon on 2020/12/06.
//

import UIKit

class FloatingButtonListViewController: UIViewController{

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        
    }
     
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1) {
            
           
        } //damping? 0에 가까울수록 흔들림이커짐 0-1사이값
          //Velocity 값 애니메이션 부드럽게
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut) {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            
            self.view.layoutIfNeeded() //화면갱신 (꼭필요)
        } completion: { (completion) in
            
        }
    }
    
    
    @IBAction func dismissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.87, initialSpringVelocity: 0.5, options: .curveEaseOut) {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            
            self.view.layoutIfNeeded() //화면갱신 (꼭필요)
        } completion: { (completion) in
            self.dismiss(animated: false, completion: nil)
        }
    }
    
    
}
