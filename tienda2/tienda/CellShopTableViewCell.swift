//
//  CellShopTableViewCell.swift
//  tienda
//
//  Created by macbook on 21/09/18.
//  Copyright © 2018 TitiBAss. All rights reserved.
//

import UIKit

class CellShopTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    
        layer.borderWidth = 4
        layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
