//
//  ComponentStore.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-05.
//

import SwiftUI

@Observable
final class ComponentStore {
    var components : [ComponentsSection]
    
    init(components: [ComponentsSection]) {
        self.components = components
    }
}

extension ComponentStore {
    static var mockComponent = [
        ComponentsSection(title: "Text Input/Output", component: [
            ComponentsModel(name: "Text", imageName: "textformat"),
            ComponentsModel(name: "Label", imageName: "tag"),
            ComponentsModel(name: "TextField", imageName: "rectangle.and.pencil.and.ellipsis"),
            ComponentsModel(name: "SecureField", imageName: "lock.fill"),
            
            ComponentsModel(name: "TextArea", imageName: "text.append"),
            
            ComponentsModel(name: "Image", imageName: "photo.artframe"),
        ]),
        
        ComponentsSection(title: "Controls", component: [
            ComponentsModel(name: "Button", imageName: "hand.tap.fill"),
            
            ComponentsModel(name: "Menu", imageName: "line.horizontal.3"),
            
            ComponentsModel(name: "Link", imageName: "link"),
            
            ComponentsModel(name: "Slider", imageName: "slider.horizontal.3"),
            
            ComponentsModel(name: "Stepper", imageName: "plus.forwardslash.minus"),
            
            ComponentsModel(name: "Toggle", imageName: "switch.2"),
            
            ComponentsModel(name: "Picker", imageName: "dial.fill"),
            
            ComponentsModel(name: "DatePicker", imageName: "calendar"),
            
            ComponentsModel(name: "ColorPicker", imageName: "eyedropper.halffull"),
            
            ComponentsModel(name: "ProgressView", imageName: "gauge"),
        ]),
        
        ComponentsSection(title: "Container Views", component: [
            ComponentsModel(name: "HStack", imageName: "rectangle.split.2x1"),
            
            ComponentsModel(name: "VStack", imageName: "rectangle.split.1x2"),
            
            ComponentsModel(name: "ZStack", imageName: "rectangle.on.rectangle"),
            
            ComponentsModel(name: "Form", imageName: "square.grid.3x1.fill.below.line.grid.1x2"),
            
            ComponentsModel(name: "NavigationView", imageName: "arrowshape.turn.up.left"),
            
            ComponentsModel(name: "Alert", imageName: "exclamationmark.triangle.fill"),
            
            ComponentsModel(name: "Sheets", imageName: "doc.fill"),
        ]),
        
        ComponentsSection(title: "List", component: [
            ComponentsModel(name: "Plain", imageName: "list.bullet"),
            
            ComponentsModel(name: "Inset", imageName: "list.bullet.rectangle"),
            
            ComponentsModel(name: "Grouped", imageName: "list.dash"),
            
            ComponentsModel(name: "InsetGrouped", imageName: "list.bullet.circle.fill"),
            
            ComponentsModel(name: "Sidebar", imageName: "sidebar.left"),
        ])
    ]
    
    static var componetStore : ComponentStore = ComponentStore(components: mockComponent)
}

