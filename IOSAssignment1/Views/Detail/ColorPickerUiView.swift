//
//  ColorPickerUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct ColorPickerUiView: View {
    @State private var color: Color = .accentColor
    var body: some View {
        List{
            Section{
                ColorPicker("Choose Color", selection: $color)
                // Selected color displayed
                HStack{
                    Text("Selected Color")
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(color)
                        .frame(width: 60, height: 60)
                        .padding(.horizontal, 16)
                }
            }  footer: {
                Text("Control that allows user to select color")
            }
        }
    }
}

#Preview {
    ColorPickerUiView()
}
