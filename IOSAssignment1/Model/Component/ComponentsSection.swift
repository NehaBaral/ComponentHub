//
//  ComponentsSection.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-05.
//

import SwiftUI

struct ComponentsSection: Identifiable {
    var id: UUID
    var title : String
    var component : [ComponentsModel]
    
    init(id: UUID = UUID(), title: String, component: [ComponentsModel]) {
        self.id = id
        self.title = title
        self.component = component
    }
}
