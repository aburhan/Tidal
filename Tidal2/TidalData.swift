//
//  TidalData.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/23/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import Foundation
import IGListKit

class TidalData{
    
    func getData()->[ListDiffable]{
        
         let data = [AlbumPreviews(albumID: 11, albumImage: "ablum1"),
                Header(icon: #imageLiteral(resourceName: "tracks"), heading: "TRACKS"),
                Track(trackID: "T1", trackIcon: #imageLiteral(resourceName: "album1"), trackName: "Living It Up", trackDetail: "Damian Marley - Living It Up", trackTime: 4.00),
                Track(trackID: "T2", trackIcon: #imageLiteral(resourceName: "album2"), trackName: "Electric Blue", trackDetail: "Arcade Fire - Electric Blue", trackTime: 4.02),
                Track(trackID: "T3", trackIcon: #imageLiteral(resourceName: "album3"), trackName: "Issues", trackDetail: "Meek Mill - Issues", trackTime: 4.0),
                Track(trackID: "T4", trackIcon: #imageLiteral(resourceName: "album4"), trackName: "Less Than", trackDetail: "Nine Inch Nails - Less Than", trackTime: 3.30),
                Track(trackID: "T5", trackIcon: #imageLiteral(resourceName: "album5"), trackName: "Wings", trackDetail: "Vic Mensa, Pharrell Williams, S...", trackTime: 4.0),
                1,
                Header(icon: #imageLiteral(resourceName: "albums"), heading: "ALBUMS"),
                "Tracks",
                2
        ] as [Any]
        return data as! [ListDiffable]
    }
}
