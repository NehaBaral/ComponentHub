//
//  PickerUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-14.
//

import SwiftUI



struct PickerUiView: View {
    @State private var selectedFlavour : Flavour = .chocolate
    var body: some View {
        List{
            Section{
                Picker("Flavour", selection: $selectedFlavour){
                    ForEach(Flavour.allCases){ flavour in
                        Text(flavour.rawValue.capitalized)
                            .tag(flavour)
                    }
                }.pickerStyle(.automatic)
                
                
                VStack{
                    Text("Wheel")
                    Picker("Flavour", selection: $selectedFlavour){
                        ForEach(Flavour.allCases){ flavour in
                            Text(flavour.rawValue.capitalized)
                                .tag(flavour)
                        }
                    }.pickerStyle(.wheel)
                }
                
                VStack{
                    Text("Menu")
                    Picker("Flavour", selection: $selectedFlavour){
                        ForEach(Flavour.allCases){ flavour in
                            Text(flavour.rawValue.capitalized)
                                .tag(flavour)
                        }
                    }.pickerStyle(.menu)
                }
                
                Picker("Flavour", selection: $selectedFlavour){
                    ForEach(Flavour.allCases){ flavour in
                        Text(flavour.rawValue.capitalized)
                            .tag(flavour)
                    }
                }.pickerStyle(.navigationLink)
                
                Picker("Flavour", selection: $selectedFlavour){
                    ForEach(Flavour.allCases){ flavour in
                        Text(flavour.rawValue.capitalized)
                            .tag(flavour)
                    }
                }.pickerStyle(.segmented)
                
                Picker("Flavour", selection: $selectedFlavour){
                    ForEach(Flavour.allCases){ flavour in
                        Text(flavour.rawValue.capitalized)
                            .tag(flavour)
                    }
                }.pickerStyle(.palette)
                
                Picker("Flavour", selection: $selectedFlavour){
                    ForEach(Flavour.allCases){ flavour in
                        Text(flavour.rawValue.capitalized)
                            .tag(flavour)
                    }
                }.pickerStyle(.inline)
            } footer: {
                Text("Control that allows users to select options from the predefined list.")
            }
        }
    }
    
    enum Flavour: String, CaseIterable, Identifiable {
        case vanilla
        case chocolate
        case strawberry
        case mintChocolateChip
        
        var id: Self { self }
    }
}

#Preview {
    PickerUiView()
}
