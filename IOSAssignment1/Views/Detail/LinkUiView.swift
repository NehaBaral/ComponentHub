//
//  LinkUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct LinkUiView: View {
    var body: some View {
        List{
            Section{
                Link("Tab to open link.",
                     destination: URL(string: "https://developer.apple.com/documentation/swiftui/link")!)
                
                
                ShareLink("Share link",item: URL(string: "https://developer.apple.com/documentation/swiftui/link")!)
            } footer: {
                Text("Link helps you to navigate to the url and share link is a view that controls a sharing presentation.")
            }
        }
    }
}

#Preview {
    LinkUiView()
}
