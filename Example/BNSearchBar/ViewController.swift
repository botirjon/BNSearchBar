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
    
    private lazy var searchBar: BNSearchBar = {
//        let searchBar = BNSearchBar()
//        searchBar.translatesAutoresizingMaskIntoConstraints = false
//        searchBar.placeholder = "Search"
//        searchBar.delegate = self
//        return searchBar
        
        let searchBar = BNSearchBar()
        searchBar.tintColor = .green
        searchBar.placeholderColor = .red
        searchBar.backgroundColor = .orange
        searchBar.placeholder = "Search"
        
        searchBar.layer.cornerRadius = 12
        searchBar.textColor = .blue
         
        searchBar.font = .systemFont(ofSize: 16, weight: .medium)
        return searchBar
    }()
    
    private var showsCancelButton: Bool = false {
        didSet {
            searchBar.setShowsCancelButton(showsCancelButton, animated: true)
            button.setTitle(cancelButtonTitle, for: .normal)
        }
    }
    
    private var cancelButtonTitle: String {
        showsCancelButton ? "Hide cancel button" : "Show cancel button"
    }
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle(cancelButtonTitle, for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(didTapToggle), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.window?.overrideUserInterfaceStyle = .light
        
        view.backgroundColor = .init(dynamicProvider: { traitCollection in
            return traitCollection.userInterfaceStyle == .dark ? .init(red: 39, green: 38, blue: 43, alpha: 1) : .init(red: 245, green: 247, blue: 246, alpha: 1)
        })
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -2*20)
        ])
        
        stackView.addArrangedSubview(button)
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
        showsCancelButton.toggle()
    }
    
}

extension ViewController: BNSearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: BNSearchBar) -> Bool { true }
    
    
    func searchBarTextDidBeginEditing(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    func searchBarShouldEndEditing(_ searchBar: BNSearchBar) -> Bool { true }
    
    
    func searchBarTextDidEndEditing(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    func searchBar(_ searchBar: BNSearchBar, textDidChange searchText: String) {
        print("\(#function)", searchText)
    }
    
    
    func searchBar(_ searchBar: BNSearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {true}
    
    
    
    func searchBarSearchButtonClicked(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    func searchBarBookmarkButtonClicked(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    func searchBarResultsListButtonClicked(_ searchBar: BNSearchBar) {
        print("\(#function)")
    }
    
    
    
    func searchBar(_ searchBar: BNSearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print("\(#function)")
    }
}
