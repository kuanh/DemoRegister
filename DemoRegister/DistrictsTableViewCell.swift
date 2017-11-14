//
//  DistrictsTableViewCell.swift
//  DemoRegister
//
//  Created by KuAnh on 12/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class DistrictsTableViewCell: UITableViewCell {

    @IBOutlet weak var lbCityCode: UILabel!
    @IBOutlet weak var lbDistrictsCode: UILabel!
    @IBOutlet weak var lbName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
