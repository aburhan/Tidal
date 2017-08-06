//
//  AlbumPreviewSectionController.swift
//  Tidal2
//
//  Created by Ameenah Burhan on 8/6/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit
import IGListKit

class AlbumPreviewSectionController: ListSectionController, UIScrollViewDelegate{
    
    //MARK: images for scrollview
    fileprivate let albumsArray = ["album_display","album_display2","album_display","album_display2"]
    
    var pageControl = UIPageControl()
    let screenSize = UIScreen.main.bounds
    //MARK: Telling the adapter how big the cell will be
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: screenSize.width, height: 160)
    }
    //MARK: Configuring the cell, adding photos
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "AlbumPreviewCellCollectionViewCell", bundle: nil, for: self, at: index) as? AlbumPreviewCellCollectionViewCell
            else{fatalError()}
        
        //MARK: controls the little blue dots
        cell.pageControl.numberOfPages = albumsArray.count/2
        pageControl = cell.pageControl
        
        cell.albumScrollView.delegate = self
        cell.albumScrollView.isPagingEnabled = true
        
        let height = cell.albumScrollView.frame.height
        
        cell.albumScrollView.contentSize = CGSize(width: screenSize.width, height: height)
        
        //MARK: no horizontal, vertical or bounce (These can also be configured in storyboard
        cell.albumScrollView.showsHorizontalScrollIndicator = false
        cell.albumScrollView.showsVerticalScrollIndicator = false
        cell.albumScrollView.bounces = false
        
    
        for i in 0..<albumsArray.count{
            let imageView = UIImageView()
            imageView.image = UIImage(imageLiteralResourceName: albumsArray[i])
            imageView.contentMode = .scaleAspectFit
            
            cell.albumScrollView.addSubview(imageView)
            
            imageView.frame.size.width = cell.albumScrollView.frame.width/2
            
            let x = imageView.frame.size.width * CGFloat(i)
            imageView.frame = CGRect(x: x, y: 0, width: cell.albumScrollView.frame.width/2, height: height)
            
            cell.albumScrollView.contentSize.width = cell.albumScrollView.contentSize.width/2 * CGFloat(i + 1)
        }
        return cell
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let page = scrollView.contentOffset.x/scrollView.frame.size.width
        pageControl.currentPage = Int(page)
    }
    override func didUpdate(to object: Any) {
        
    }
}
