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
    
    // 필요한 텍스트가 포함
    // expand 상태
    
    //Model
    struct ExpandDataModel {
        var description:String
        var isExpand:Bool
        
    }
    
    var dataModels = [ExpandDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textArray = ["short Text",
                         "long long long long long long long long long long long long long long long long long long long long long long long long Text",
                         "short Text",
                         "long long long long long long long long long long long long long long long long long long long long long long long long Text",
                         "short Text",
                         "long long long long long long long long long long long long long long long long long long long long long long long long Text",]
        for (_, value) in textArray.enumerated() {
            dataModels.append(ExpandDataModel.init(description: value, isExpand: false))
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ExpandCell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = dataModels[indexPath.row].description
        
        if dataModels[indexPath.row].isExpand == true {
            cell.descriptionLabel.numberOfLines = 0
        } else {
            cell.descriptionLabel.numberOfLines = 1
        }
        
        cell.selectionStyle = .none
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand = !dataModels[indexPath.row].isExpand //반댓값 접혀있을때 열렸을떄 클릭하면
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    
}

