//
//  AlbumCollectionViewCell.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/18/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit

class AlbumViewCell: UICollectionViewCell {
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var artistName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.0)
    }

}
