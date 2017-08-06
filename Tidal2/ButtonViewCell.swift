//
//  ButtonViewCell.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/17/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit

class ButtonViewCell: UICollectionViewCell {
    @IBOutlet weak var seeMoreButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        seeMoreButton.backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }
    @IBAction func seeMoreAction(_ sender: Any) {
        print(seeMoreButton.tag)
    }

}
