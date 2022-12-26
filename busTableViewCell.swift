//
//  busTableViewCell.swift
//  busTaskDemo
//
//  Created by Mac on 26/01/34.
//

import UIKit

class busTableViewCell: UITableViewCell {
   
    @IBOutlet var view1: UIView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var progressBar1: UIView!
    
    @IBOutlet var seeDirectionBtn: UIButton!
    
    @IBOutlet var proceedBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
