//
//  ViewController.swift
//  Tidal2
//
//  Created by Ameenah Burhan on 7/30/17.
//  Copyright © 2017 Ameenah Burhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
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
}

