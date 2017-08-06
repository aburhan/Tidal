//
//  TrackViewCell.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/17/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit

class TrackViewCell: UICollectionViewCell {

    @IBOutlet weak var trackIcon: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var trackDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }

}
