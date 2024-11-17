//
//  ComponentsModel.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-05.
//

import SwiftUI

struct ComponentsModel: Identifiable {
    let id : UUID
    let name : String
    let imageName : String
    
    internal init(id: UUID = UUID(), name: String, imageName: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}

