//
//  StepperUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct StepperUiView: View {
    @State private var value = 0
    let colors : [Color] = [.pink, .green, .purple, .blue, .red, .orange, .gray]
    
    @State private var stepperValue = 0
    let step = 5
    let range = 1...50
    
    func incrementStep(){
        value += 1
        if value >= colors.count{
            value = 0
        }
    }
    
    func decrementStep(){
        value -= 1
        if(value < 0){
            value = colors.count - 1
        }
    }
    
    var body: some View {
        List{
            Section{
                Stepper{
                    Text("Value: \(value) Color: \(colors[value].description)")
                }onIncrement: {
                    incrementStep()
                } onDecrement: {
                    decrementStep()
                }
                .padding(5)
                .background(colors[value])
                
                Stepper(
                    value: $stepperValue,
                    in: range,
                    step: step
                ){
                    Text("Current Value: \(stepperValue)")
                }.padding(10)
            } footer: {
                Text("Allow users to increment and decrement a value in the specific range")
            }
        }
    }
}

#Preview {
    StepperUiView()
}
