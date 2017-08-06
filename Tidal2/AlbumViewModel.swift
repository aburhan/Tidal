//
//  AlbumViewModel.swift
//  Tidal2
//
//  Created by Ameenah Burhan on 8/6/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

//
//  AlbumViewModel.swift
//  Tidal
//
//  Created by Ameenah Burhan on 7/19/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import Foundation
import IGListKit

class AlbumViewModel: NSObject{
    let albumID: Int!
    let albumImage: UIImage
    
    init(albumID: Int, albumImage: UIImage){
        self.albumID = albumID
        self.albumImage = albumImage
    }
}
extension AlbumViewModel: ListDiffable{
    func diffIdentifier() -> NSObjectProtocol{
        return albumID as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool{
        guard self !== object else { return true }
        guard let object = object as? AlbumPreviews else { return false }
        return albumID == object.albumID
    }
    
}

