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
    @IBOutlet weak var roleLabelField: UILabel!
    @IBOutlet weak var utteranceLabelField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fixAllLabels()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension TableViewCell{
    fileprivate func fixLabelText(label : UILabel){
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
    }
    fileprivate func fixAllLabels(){
        fixLabelText(label: nameLabelField)
        fixLabelText(label: powerLabelField)
        fixLabelText(label: roleLabelField)
        fixLabelText(label: utteranceLabelField)
    }
}
