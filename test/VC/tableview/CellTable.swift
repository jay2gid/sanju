//
//  CellTable.swift
//  POSLiteWeb
//
//  Created by Python on 5/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class CellTable: UITableViewCell {

    class func commonInit() -> CellTable {
           let nibView = Bundle.main.loadNibNamed("CellTable", owner: self, options: nil)?[0] as! CellTable
           nibView.layoutIfNeeded()
           return nibView
    }
    
    
    
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblAge: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
