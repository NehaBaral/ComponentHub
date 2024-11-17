//
//  NavigationViewUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-12.
//

import SwiftUI

struct NavigationViewUiView: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    NavigationLink(destination: Text("This is Screen 1")){
                        Text("Index 1");
                    }
                    
                    NavigationLink(destination: Text("This is Screen 2")){
                        Text("Index 2");
                    }
                    
                    NavigationLink(destination: Text("This is Screen 3")){
                        Text("Index 3")
                    }
                } footer: {
                    Text("It enables navigation between different screens.")
                }
            }
        }
    }
}

#Preview {
    NavigationViewUiView()
}
