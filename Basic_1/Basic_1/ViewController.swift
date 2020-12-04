//
//  ViewController.swift
//  Basic_1
//
//  Created by sangheon on 2020/12/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let button = UIButton.init(type: .system)
        button.setTitle("MY BUTTON", for: .normal)
        
        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false  //false == 오토레이아웃 설정 하곘다 //true == frame설정
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true //기본값이 false 라 꼭 true 해야함
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor,constant:  100).isActive = true
        
        let label = UILabel.init()
        label.text = "MY LABEL"
        
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        label.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        
        
    }


}

