//
//  MyCell.swift
//  DropMenu
//
//  Created by Ahmed Ragab on 26/04/2022.
//

import UIKit
import DropDown
class MyCell: DropDownCell {
    @IBOutlet weak var logoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
