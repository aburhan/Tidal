//
//  ViewController.swift
//  Tidal2
//
//  Created by Ameenah Burhan on 7/30/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController, ListAdapterDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    let tidalData = TidalData()
    var data: [Any] = []
    lazy var adapter: ListAdapter = {
         return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = tidalData.getData()
        setupHeader()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }

    //MARK: Add custom label to the navigation controller
    func setupHeader(){
        let bounds = navigationController?.navigationBar.bounds
        let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: (bounds?.width)!, height: (bounds?.height)!))
        
        headerLabel.text = "What's New"
        headerLabel.textColor = .white
        headerLabel.font = headerLabel.font.withSize(20)
        navigationItem.titleView = headerLabel
        
    }
    public func objects(for listAdapter: ListAdapter) -> [ListDiffable]{
        return data as! [ListDiffable]
    }

    public func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController{
        switch object{
        case is Header:
            return HeaderSectionController()
        default:
            return AlbumPreviewSectionController()
        }
        
    }

    public func emptyView(for listAdapter: ListAdapter) -> UIView?{
        return nil
    }

    
}

