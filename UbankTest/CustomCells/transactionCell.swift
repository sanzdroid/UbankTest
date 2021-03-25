//
//  transactionCell.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import UIKit

class transactionCell: UITableViewCell {

    @IBOutlet var transactionDate: UILabel!
    @IBOutlet var transactionDesc: UILabel!
    @IBOutlet var amount: UILabel!
    @IBOutlet var processingStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
