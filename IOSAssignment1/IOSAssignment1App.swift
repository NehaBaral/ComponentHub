//
//  IOSAssignment1App.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-04.
//

import SwiftUI

@main
struct IOSAssignment1App: App {
    var body: some Scene {
        WindowGroup {
            ComponentListView(viewModel: ComponentListViewModel())
        }
    }
}
