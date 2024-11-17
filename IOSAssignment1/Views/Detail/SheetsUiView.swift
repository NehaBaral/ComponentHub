//
//  SheetsUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-14.
//

import SwiftUI

struct SheetsUiView: View {
    @State private var showingSheet : Bool = false
    @State private var showingFullScreen : Bool = false
    
    var body: some View {
        List{
            Section{
                Button("Show Sheet",action: {
                    showingSheet = true
                }).sheet(isPresented: $showingSheet){
                    SheetContentView()
                        .presentationDetents([.medium,.large])
                        .presentationBackgroundInteraction(.automatic)
                        .presentationBackground(.regularMaterial)
                }
                
                Button("Show full screen cover",action: {
                    showingFullScreen = true
                }).fullScreenCover(isPresented: $showingFullScreen){
                    FullScreenContentView()
                }
            } footer: {
                Text("A modal view that slides up from the bottom of the screen to present additional content or functionality without leaving the current context.")
            }
        }
    }
}

#Preview {
    SheetsUiView()
}

struct SheetContentView : View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            VStack{
                Text("This is Sheets.")
                    .font(.largeTitle)
                    .padding()
                                   
                Button("Dismiss") {
                // Handle dismiss action if needed
                    dismiss()
                }
            }
            .navigationTitle("Sheet")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FullScreenContentView : View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            VStack{
                Text("This is a full screen sheets")
                    .font(.largeTitle)
                    .padding()
                
                Button("Dismiss"){
                    dismiss()
                }
            }
            .navigationTitle("Full Screen Sheet")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
