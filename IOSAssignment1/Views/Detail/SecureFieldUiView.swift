//
//  SecureFieldUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-07.
//

import SwiftUI

struct SecureFieldUiView: View {
    @State private var password = ""
    @State private var password1 = ""
    @State private var password2 = ""
    
    var body: some View {
        List{
            Section{
                //Default secure field
                SecureField("Enter Password",text: $password)
                    .padding(.vertical, 8)
                
                //Securefield with style
                SecureField("Password",text: $password1)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical, 8)
                
                //Securefield with rounded border style
                SecureField("Password",text: $password2)
                    .padding(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue,lineWidth: 1)
                    ).padding(.vertical,8)
            }
            footer : {
                Text("You can use securefield to input the secure text like password")
            }
        }
    }
}

#Preview {
    SecureFieldUiView()
}
