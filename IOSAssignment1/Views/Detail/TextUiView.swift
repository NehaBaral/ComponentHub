//
//  TextUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-06.
//

import SwiftUI

struct TextUiView: View {
    var body: some View {
        List {
            Section{
                //Text with headline font
                Text("Hello World")
                    .font(.headline)
                
                //Green text color
                Text("Hello World")
                    .foregroundStyle(.green)
                
                //Text with italic font
                Text("Hello World Italic Text")
                    .italic()
                
                //Concatenated Text with different foreground color
                Text("I ")
                    .foregroundStyle(.red) +
                Text("like ")
                    .foregroundStyle(.blue) +
                Text("Coding")
                    .foregroundStyle(.green)
                
                //Text with padding
                Text("Adding padding around text")
                    .padding()
                
                //Text with yellow background color
                Text("Added background in text")
                    .padding()
                    .background(.yellow)
            }footer: {
                Text("A view that displays one or more lines of read-only text.")
            }
                    
        }
    }
}

#Preview {
    TextUiView()
}
