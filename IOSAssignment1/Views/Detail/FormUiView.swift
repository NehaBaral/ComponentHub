//
//  FormUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-12.
//

import SwiftUI

struct FormUiView: View {
    @State private var email : String = ""
    @State private var name : String = ""
    @State private var notification : Bool = false
    var body: some View {
        Section{
            Form{
                TextField("Email", text: $email)
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue,lineWidth: 1)
                    )
                
                TextField("Fullname",text: $name)
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue,lineWidth: 1)
                    )
                
                Toggle("Notification",isOn: $notification)
                    .padding(10)
                
                
            }
        } footer: {
            Text("A container view that groups input controls and applies platform-appropriate styling, commonly used for data entry, settings screens, and user profiles.")
                .padding()
        }
    }
}

#Preview {
    FormUiView()
}
