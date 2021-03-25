//
//  accountCell.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import UIKit

class accountCell: UITableViewCell {
    
    @IBOutlet var lblAccountName: UILabel!
    @IBOutlet var lblAccountNo: UILabel!
    @IBOutlet var lblAvailableBalance: UILabel!
    @IBOutlet var lblCurrentBalance: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
