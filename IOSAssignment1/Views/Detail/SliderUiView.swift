//
//  SliderUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct SliderUiView: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        List{
            Section{
                VStack{
                    Slider(
                        value: $speed,
                        in: 0...100,
                        onEditingChanged: {editing in
                            isEditing = editing
                        }
                    )
                    
                    Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                }
                
                VStack{
                    Slider(
                        value: $speed,
                        in: 0...100,
                        step: 5
                    ){
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { editing in
                        isEditing = editing
                    }
                    
                    Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                }
            } footer: {
                Text("A control for selecting a value from a range of value.")
            }
        }
    }
}

#Preview {
    SliderUiView()
}
