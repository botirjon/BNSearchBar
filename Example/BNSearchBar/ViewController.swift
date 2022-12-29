//
//  ViewController.swift
//  BNSearchBar
//
//  Created by botirjon on 12/29/2022.
//  Copyright (c) 2022 botirjon. All rights reserved.
//

import UIKit
import BNSearchBar

class ViewController: UIViewController {

    private lazy var searchBar: BNSearchBar = {
        let searchBar = BNSearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchBar.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            searchBar.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -2*20)
        ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

