//
//  ViewController.swift
//  Floating_Button
//
//  Created by sangheon on 2020/12/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonListViewController
            floatingVC.modalPresentationStyle = .overCurrentContext //투명하게 덮기 //색깔 지정
            
        }
    }

}

