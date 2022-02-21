//
//  TableViewCell.swift
//  Challenge
//
//  Created by Doğukan Inci on 18.02.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var imageCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
