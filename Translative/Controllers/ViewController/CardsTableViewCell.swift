//
//  CardTableViewCell.swift
//  Translative
//
//  Created by xdrond on 16.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import UIKit

class CardsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
