//
//  ListUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-13.
//

import SwiftUI

struct ListUiView: View {
    var name: String
    
    var body: some View {
        VStack{
            styledList()
            Spacer()
        }
    }
    
    @ViewBuilder
    private func styledList() -> some View {
            switch name {
            case "Plain":
                 listContent.listStyle(.plain)
            case "Inset":
                 listContent.listStyle(.inset)
            case "Grouped":
                 listContent.listStyle(.grouped)
            case "Inset Grouped":
                 listContent.listStyle(.insetGrouped)
            case "Sidebar":
                 listContent.listStyle(.sidebar)
            default:
                 listContent.listStyle(.plain)
            }
        }
    
    private var listContent: some View {
            List {
                Section {
                    Label("Sun", systemImage: "sun.max")
                    Label("Cloudy", systemImage: "cloud")
                    Label("Moon", systemImage: "moon")
                    Label("Rain", systemImage: "cloud.rain")
                } header: {
                    Text("All the weather type.")
                } footer: {
                    listInfo()
                }
            }
        }
    
    private func listInfo() -> some View {
            switch name {
            case "Plain":
                Text("Simplest liststyle with no background or grouping.")
            case "Inset":
                Text("Slight inset from screen edge and minimal visual separation")
            case "Grouped":
                Text("It add background and group items.")
            case "Inset Grouped":
                Text("It is similar to .grouped and items are inset from screen edges")
            case "Sidebar":
                Text("It is used in MacOs and it has narrow, sidebar-like appearance")
            default:
                Text("No info available")
            }
        }
}

#Preview {
    ListUiView(name: "Plain")
}
