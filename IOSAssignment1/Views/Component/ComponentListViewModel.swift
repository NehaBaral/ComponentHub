//
//  ComponentListViewModel.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-04.
//

import SwiftUI

@Observable
final class ComponentListViewModel{
    
    var store : ComponentStore
    var searchTerm: String = "" {
            didSet {
                filterSearchResults()
            }
        }
    var searchResults : [ComponentsSection] = []
    
    var listData : [ComponentsSection]{
        return searchTerm.isEmpty ? store.components : searchResults
    }
    
    init(store: ComponentStore = ComponentStore.componetStore) {
        self.store = store
    }
    

    func filterSearchResults() {
        if searchTerm.isEmpty {
            searchResults = store.components
        } else {
            searchResults = store.components.compactMap { section in
                let filteredComponents = section.component.filter { component in
                    component.name.localizedCaseInsensitiveContains(searchTerm)
                }
                
                if !filteredComponents.isEmpty {
                    return ComponentsSection(title: section.title, component: filteredComponents)
                } else if section.title.localizedCaseInsensitiveContains(searchTerm) {
                    return section
                } else {
                    return nil
                }
            }
        }
    }
}
