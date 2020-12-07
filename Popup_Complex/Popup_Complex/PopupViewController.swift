//
//  PopupViewController.swift
//  Popup_Complex
//
//  Created by sangheon on 2020/12/07.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopup(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    

    @IBAction func doneAction(_ sender: Any) {
        
    }
}
