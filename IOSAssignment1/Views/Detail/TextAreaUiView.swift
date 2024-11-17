//
//  TextAreaUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-07.
//

import SwiftUI

struct TextAreaUiView: View {
    @State private var text = ""
    var body: some View {
        List{
            Section{
                VStack(alignment: .leading){
                    Text("Tell us about yourself.")
                        .bold()
                        .font(.title3)
                    
                    TextEditor(text: $text)
                        .frame(height : 200)
                        .border(Color.gray, width: 1)
                    
                    Spacer()
                }
            } footer: {
                Text("Textarea to enter multiline text")
            }
        }
    }
}

#Preview {
    TextAreaUiView()
}
