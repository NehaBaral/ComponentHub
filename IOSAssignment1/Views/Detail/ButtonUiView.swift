//
//  ButtonUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-14.
//

import SwiftUI

struct ButtonUiView: View {
    var body: some View {
        List{
            Section{
                Button(action : {
                    
                }){
                    Text("Default")
                }
                
                Button(role: .destructive, action: {
                    
                }){
                    Text("Destructive")
                }
                
                Button(role: .cancel, action: {
                    
                }){
                    Text("Cancel")
                }
                
                Button(action: {
                    
                }){
                    Text("Plain")
                    
                } .buttonStyle(.plain)
                
                Button(action: {
                    
                }){
                    Text("Borderless")
                    
                } .buttonStyle(.borderless)
                
                Button(action: {
                    
                }){
                    Text("Bordered")
                } .buttonStyle(.bordered)
                    .controlSize(.regular)
                    .buttonBorderShape(.automatic)
                
                Button(action: {
                    
                }){
                    Text("Bordered Prominent")
                        .buttonStyle(.borderedProminent)
                        .controlSize(.regular)
                        .buttonBorderShape(.automatic)
                        .tint(.mint)
                }
            } footer: {
                Text("A control that performs an action when triggered");
            }
        }
    }
}

#Preview {
    ButtonUiView()
}
