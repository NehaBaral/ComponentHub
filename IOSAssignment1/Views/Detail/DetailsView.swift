//
//  DetailsView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-06.
//

import SwiftUI

struct DetailsView: View {
    var compo: ComponentsModel
    var documentUrl : String = "https://developer.apple.com/documentation/swiftui/"
    @State private var showSafari = false
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 20) {
                switch(compo.name){
                case "Text" :
                    TextUiView()
                    
                case "Label":
                    LabelUiView()
                    
                case "TextField":
                    TextFieldUiView()
                    
                case "SecureField" :
                    SecureFieldUiView()
                    
                case "TextArea" :
                    TextAreaUiView()
                    
                case "Image" :
                    ImageUiView()
                    
                case "HStack" :
                    HStackUiView()
                    
                case "VStack" :
                    VStackUiView()
                    
                case "ZStack" :
                    ZStackUiView()
                    
                case "Form" :
                    FormUiView()
                    
                case "NavigationView" :
                    NavigationViewUiView()
                    
                case "Alert" :
                    AlertsUiView()
                    
                case "Plain" :
                    ListUiView(name:"Plain")
                    
                case "Inset" :
                    ListUiView(name: "Inset")
                    
                case "Grouped" :
                    ListUiView(name: "Grouped")
                    
                case "InsetGrouped" :
                    ListUiView(name: "InsetGrouped")
                    
                case "Sidebar" :
                    ListUiView(name: "Sidebar")
                    
                case "Sheets" :
                    SheetsUiView()
                    
                case "Button" :
                    ButtonUiView()
                    
                case "Picker" :
                    PickerUiView()
                    
                case "DatePicker" :
                    DatePickerUiView()
                    
                case "Menu" :
                    MenuUiView()
                    
                case "Link" :
                    LinkUiView()
                    
                case "Slider" :
                    SliderUiView()
                    
                case "Stepper" :
                    StepperUiView()
                    
                case "Toggle" :
                    ToggleUiView()
                    
                case "ColorPicker" :
                    ColorPickerUiView()
                    
                case "ProgressView" :
                    ProgressViewUiView()
                    
                default :
                    Text("Details not available for this component.")
                }
            }.navigationTitle(compo.name)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            openSafari()
                        }) {
                            Image(systemName: "doc")
                        }
                    }
                }
                .sheet(isPresented: $showSafari) {
                    SafariView(url: URL(string: getUrl())!)
                }
        }
        
    }
    
    private func getUrl() -> String {
        switch compo.name {
        case "Plain", "Inset", "Grouped", "InsetGrouped", "Sidebar":
            return "\(documentUrl)/liststyle/\(compo.name.lowercased())"
            
        case "Sheets":
            return "\(documentUrl)presentationadaptation/sheet/"
            
        case "TextArea":
            return "https://developer.apple.com/documentation/appkit/nsaccessibility/role/1533503-textarea/"
            
        default:
            return "\(documentUrl)\(compo.name.lowercased())"
        }
    }
    
    private func openSafari(){
        showSafari = true
    }
}
