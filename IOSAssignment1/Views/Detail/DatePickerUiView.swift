//
//  DatePickerUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-15.
//

import SwiftUI

struct DatePickerUiView: View {
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    var body: some View {
        List{
            Section{
                HStack(){
                    DatePicker(selection: $selectedDate, in: ...Date(),
                               displayedComponents: .date, label: {
                        Text("Date")
                    })
                    
                    DatePicker("Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }.padding(.vertical,8)
                Text("Selected Date : \(selectedDate.formatted(date: .long, time: .omitted))")
                Text("Selected Time : \(selectedTime.formatted(date: .omitted, time: .shortened))")
            } footer: {
                Text("Control that allows user to select date or time")
            }
        }
    }
    
    enum DateType: String, CaseIterable, Identifiable {
        case vanilla
        case chocolate
        case strawberry
        case mintChocolateChip
        
        var id: Self { self }
    }
}

#Preview {
    DatePickerUiView()
}
