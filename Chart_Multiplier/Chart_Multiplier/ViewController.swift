//
//  ViewController.swift
//  Chart_Multiplier
//
//  Created by sangheon on 2020/12/07.
//

import UIKit






extension NSLayoutConstraint {
    func changeMultiPlier(value:CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self]) //가지고있는 constraint 비활성화
        
        let newConstraint = NSLayoutConstraint.init(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: value, constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier    //가지고 있는 정보들 여거 다~~~가져 와야댐 기존 constraint
        
        NSLayoutConstraint.activate([newConstraint]) //새로 만든걸로 활성화 하겠다 //위부분이랑이부분 없으면 값이 누적됨
        
        return newConstraint
    }
}







class ViewController: UIViewController {
    
    @IBOutlet weak var graph5Height: NSLayoutConstraint!
    @IBOutlet weak var graph4Height: NSLayoutConstraint!
    @IBOutlet weak var graph3Height: NSLayoutConstraint!
    @IBOutlet weak var graph2Height: NSLayoutConstraint!
    @IBOutlet weak var graph1Height: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    
    @IBAction func style1(_ sender: Any) {
       
        
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMultiPlier(value: 0.9)
            self.graph2Height = self.graph2Height.changeMultiPlier(value: 0.8)
            self.graph3Height = self.graph3Height.changeMultiPlier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMultiPlier(value: 0.6)
            self.graph5Height = self.graph5Height.changeMultiPlier(value: 0.5)
            
            self.view.layoutIfNeeded()// 애니메이션 나오는도중 화면계속갱신!
        }
    }
    
    
    @IBAction func style2(_ sender: Any) {
       
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMultiPlier(value: 0.5)
            self.graph2Height = self.graph2Height.changeMultiPlier(value: 0.6)
            self.graph3Height = self.graph3Height.changeMultiPlier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMultiPlier(value: 0.8)
            self.graph5Height = self.graph5Height.changeMultiPlier(value: 0.9)
            self.view.layoutIfNeeded()
        }
    }
    
}

