//
//  myTableCell.swift
//  TableView using XIB File
//
//  Created by Nikhil Saini on 25/04/23.
//

import UIKit

class myTableCell: UITableViewCell {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
