//
//  TableViewCell.swift
//  ethnik
//
//  Created by James Keith Vega on 11/30/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import FirebaseDatabase

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    var snapshot : DataSnapshot?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
