//
//  firstcellTableViewCell.swift
//  tienda
//
//  Created by Usuario invitado on 20/9/18.
//  Copyright © 2018 TitiBAss. All rights reserved.
//

import UIKit

class firstcellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagenCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
