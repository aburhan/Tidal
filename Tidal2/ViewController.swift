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
    var data: [Any] = [1]
    lazy var adapter: ListAdapter = {
         return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
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
        return AlbumPreviewSectionController()
    }

    public func emptyView(for listAdapter: ListAdapter) -> UIView?{
        return nil
    }

    
}

