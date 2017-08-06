//
//  HeaderViewCell.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/16/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit

class HeaderViewCell: UICollectionViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerImage: UIImage!
    @IBOutlet weak var headerIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }
}
