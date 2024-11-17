//
//  MenuUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct MenuUiView: View {
    var body: some View {
        List{
            Section{
                Menu(content: {
                    ControlGroup{
                        Button(action : {
                            
                        }){
                            Image(systemName: "pin.fill");
                        }
                        
                        Button(action: {
                            
                        }){
                            Image(systemName: "lock");
                        }
                        
                        Button(action:{
                            
                        }){
                            Image(systemName: "magnifyingglass")
                        }
                    }
                    
                    Section{
                        Button(action: {
                            
                        }){
                            Label("Move File", systemImage: "folder")
                        }
                        
                        Button(action: {
                            
                        }){
                            Label("New Folder", systemImage: "folder.badge.plus")
                        }
                    }
                    
                }, label: {
                    Text("Show Menu")
                }).menuStyle(.button)
                
                Button(action: {
                    
                }, label: {
                    Text("Show Context Menu(Touch and hold)")
                }).contextMenu{
                    Button(action: {
                        
                    }){
                        Label("Copy", systemImage: "doc.on.doc")
                    }
                    
                    Button(action:{
                        
                    }){
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                    
                    Button(action:{
                        
                    }){
                        Label("Favourite", systemImage: "heart")
                    }
                    
                    Divider()
                    
                    Button(role:.destructive,action: {
                        // Your action here
                    }) {
                        Label("Remove", systemImage: "trash")
                    }
                }
            } footer: {
                Text("Menu is a control of presenting a menu of action and context menu is a control of presenting a contextually-appropriate menu of buttons.")
            }
        }
    }
}

#Preview {
    MenuUiView()
}
