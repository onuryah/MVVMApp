//
//  TableViewCell.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 4.12.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var nameLabelField: UILabel!
    @IBOutlet weak var powerLabelField: UILabel!
    @IBOutlet weak var placeLabelField: UILabel!
    @IBOutlet weak var utteranceLabelField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
