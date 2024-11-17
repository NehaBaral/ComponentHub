//
//  AlertsUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-12.
//

import SwiftUI

struct AlertsUiView: View {
    @State private var showAlert : Bool = false
    @State private var showMessage : Bool = false
    var body: some View {
        List{
            Section{
                Button("Show Alert"){
                    showAlert = true
                }.alert("Alert Title",isPresented: $showAlert){
                    
                }.buttonBorderShape(.roundedRectangle)
                
                Button("Show Alerts with two button"){
                    showMessage = true
                }.alert("Important message", isPresented: $showMessage) {
                    Button("Delete", role: .destructive) { }
                    Button("Cancel", role: .cancel) { }
                }
            } footer: {
                Text("Pop-up that displays messages or prompts user action, triggered by state changes.")
            }
        }
    }
}

#Preview {
    AlertsUiView()
}
