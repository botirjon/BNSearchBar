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

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var uiSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.showsCancelButton = true
//        searchBar.showsBookmarkButton = true
//        searchBar.showsScopeBar = true
//        searchBar.showsSearchResultsButton = true
        return searchBar
    }()
    
    private lazy var searchBar: BNSearchBar = {
        let searchBar = BNSearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Search"
        return searchBar
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Toggle", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(didTapToggle), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -2*20)
        ])
        
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(uiSearchBar)
        stackView.addArrangedSubview(searchBar)
        
        stackView.arrangedSubviews.forEach { view in
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalTo: view.superview!.widthAnchor)
            ])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func didTapToggle() {
        searchBar.setShowsCancelButton(!searchBar.showsCancelButton, animated: true)
    }
    
}

extension ViewController: UISearchBarDelegate {
    
}
