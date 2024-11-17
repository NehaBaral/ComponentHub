//
//  ToggleUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct ToggleUiView: View {
    @State private var isNotificationOn = false
    var body: some View {
        List{
            Section{
                Toggle(isOn: $isNotificationOn){
                    Text("Notification")
                }
                
                //Toggle with icon
                Toggle("Notification",systemImage: "dot.radiowaves.left.and.right",isOn: $isNotificationOn)
                
                Toggle(isOn: $isNotificationOn) {
                    Text("Notification")
                    Text("Enable notification when the phone is on.")
                }
            } footer: {
                Text("Allows user to switch between two state either ON or OFF")
            }
        }
    }
}

#Preview {
    ToggleUiView()
}
