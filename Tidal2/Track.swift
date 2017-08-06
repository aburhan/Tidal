//
//  Track.swift
//  Tidal2
//
//  Created by Ameenah Burhan on 8/6/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import Foundation
import Foundation
import IGListKit

class Track: ListDiffable{
    let trackID: String
    let trackIcon: UIImage
    let trackName: String
    let trackDetail: String
    let trackTime: Float
    
    init(trackID: String, trackIcon: UIImage, trackName: String, trackDetail: String, trackTime: Float ){
        self.trackID = trackID
        self.trackIcon = trackIcon
        self.trackName = trackName
        self.trackDetail = trackDetail
        self.trackTime = trackTime
    }
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return trackID as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard self !== object else { return true }
        guard let object = object as? Track else { return false }
        return trackID == object.trackID
    }
}
