//
//  ViewController.swift
//  Popup_Complex
//
//  Created by sangheon on 2020/12/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPopup(_ sender: Any) {
        // popupViewController
        
        let storyboard = UIStoryboard.init(name: "PopupViewController", bundle: nil) //bundle 설정값
        
        let popupVC = storyboard.instantiateViewController(withIdentifier: "popupVC")
        
        popupVC.modalPresentationStyle = .overCurrentContext //투명도가 있으면 투명하게 나오겠다 
        self.present(popupVC, animated: true, completion: nil)
    }
    
}

