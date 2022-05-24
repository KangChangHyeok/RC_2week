//
//  TableViewCell.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableViewCellImageV: UIImageView!
    @IBOutlet weak var tableViewCellLabel: UILabel!
    @IBOutlet weak var emptyV: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        tableViewCellImageV.layer.cornerRadius = tableViewCellImageV.bounds.width / 2
        tableViewCellImageV.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
