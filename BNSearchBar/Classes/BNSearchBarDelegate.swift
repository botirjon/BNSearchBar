//
//  BNSearchBarDelegate.swift
//  BNSearchBar
//
//  Created by Botirjon Nasridinov on 05/01/23.
//

import Foundation

public protocol BNSearchBarDelegate {
    
    
    @available(iOS 2.0, *)
    func searchBarShouldBeginEditing(_ searchBar: BNSearchBar) -> Bool // return NO to not become first responder
    
    @available(iOS 2.0, *)
    func searchBarTextDidBeginEditing(_ searchBar: BNSearchBar) // called when text starts editing
    
    @available(iOS 2.0, *)
    func searchBarShouldEndEditing(_ searchBar: BNSearchBar) -> Bool // return NO to not resign first responder
    
    @available(iOS 2.0, *)
    func searchBarTextDidEndEditing(_ searchBar: BNSearchBar) // called when text ends editing
    
    @available(iOS 2.0, *)
    func searchBar(_ searchBar: BNSearchBar, textDidChange searchText: String) // called when text changes (including clear)
    
    @available(iOS 3.0, *)
    func searchBar(_ searchBar: BNSearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool // called before text changes
    
    
    @available(iOS 2.0, *)
    func searchBarSearchButtonClicked(_ searchBar: BNSearchBar) // called when keyboard search button pressed
    
    @available(iOS 2.0, *)
    func searchBarBookmarkButtonClicked(_ searchBar: BNSearchBar) // called when bookmark button pressed
    
    @available(iOS 2.0, *)
    func searchBarCancelButtonClicked(_ searchBar: BNSearchBar) // called when cancel button pressed
    
    @available(iOS 3.2, *)
    func searchBarResultsListButtonClicked(_ searchBar: BNSearchBar) // called when search results button pressed
    
    
    @available(iOS 3.0, *)
    func searchBar(_ searchBar: BNSearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}

