//
//  MealTableViewCell.swift
//  iosgs
//
//  Created by Nattawut Pichaiwattnphon on 18/11/19.
//  Copyright © 2019 Nattawut Pichaiwattnphon. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var view_image: UIImageView!
    
    @IBOutlet weak var view_label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
