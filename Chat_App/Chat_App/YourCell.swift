//
//  YourCell.swift
//  Chat_App
//
//  Created by sangheon on 2020/12/08.
//

import UIKit

class YourCell: UITableViewCell {

    @IBOutlet weak var yourCellTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
