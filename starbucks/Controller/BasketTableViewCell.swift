//
//  BasketTableViewCell.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/26.
//

import UIKit

class BasketTableViewCell: UITableViewCell {

    @IBOutlet weak var basketMenuImage: UIImageView!
    @IBOutlet weak var basketMenuName: UILabel!
    @IBOutlet weak var basketMenuEName: UILabel!
    @IBOutlet weak var basketMenuPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
