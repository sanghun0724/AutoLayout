//
//  ViewController.swift
//  ExpandCellAtLabel
//
//  Created by sangheon on 2020/12/05.
//

import UIKit

class ExpandCell:UITableViewCell {
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ExpandCell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = "aaaa"
        
        return cell
        
        
    }


}

