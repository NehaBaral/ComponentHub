//
//  TextFieldUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-07.
//

import SwiftUI

struct TextFieldUiView: View {
    @State private var inputText = ""
    @State private var address = ""
    @State private var username = ""
    
    var body: some View {
        List{
            Section{
                //Textfield with email keyboard type
                TextField("Email address", text: $inputText)
                    .padding()
                    .keyboardType(.emailAddress)
                
                //Textfield with custom border
                TextField("Username",text: $username)
                    .padding(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue,lineWidth: 1)
                    )
                    .padding(.horizontal, 12)
                
                //Textfield with rounded border style
                TextField("Address",text: $address)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .foregroundColor(.black)
            } footer: {
                Text("You can use textfield to input the text")
            }
                    
        }
    }
}

#Preview {
    TextFieldUiView()
}
