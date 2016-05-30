//
//  MyCell.swift
//  Birds in Bangladesh
//
//  Created by Jack on 4/4/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
   
    @IBOutlet var MyImageCiew: UIImageView!
    @IBOutlet var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
