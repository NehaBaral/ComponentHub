//
//  LabelUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-06.
//

import SwiftUI

struct LabelUiView: View {
    var body: some View {
            List {
                Section{
                    // Title2 font, blue Label with document icon
                    Label("Hello world", systemImage: "doc")
                        .font(.title2)
                        .foregroundStyle(.blue)
                    
                    //Default label with heart icon
                    Label("Favourite", systemImage: "heart")
                    
                    // Styled Label with icon
                    Label("Important", systemImage: "exclamationmark.triangle")
                        .font(.body)
                        .foregroundStyle(.red)
                        .padding()
                        .background(Color.yellow.opacity(0.2))
                        .cornerRadius(10)
                    
                    //Label with title and icon explicitly shown
                    Label("Settings", systemImage: "gearshape.fill")
                        .labelStyle(.titleAndIcon)
                    
                    // Icon-only Label
                    Label("Notifications", systemImage: "bell.badge")
                        .labelStyle(.iconOnly)
                        .font(.title)
                    
                    //Custom label
                    Label {
                        Text("Custom Label")
                            .font(.headline)
                            .foregroundStyle(.purple)
                    } icon: {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    }
                    
                    //Multiline label with icon
                    Label {
                        VStack(alignment: .leading) {
                            Text("Main Title").font(.headline)
                            Text("Subtitle").font(.subheadline)
                        }
                    } icon: {
                        Image(systemName: "person.2.fill")
                            .font(.title3)
                            .foregroundStyle(.green)
                    }
                    
                    //label used in button
                    Button(action: {}) {
                        Label("Add to Cart", systemImage: "cart.badge.plus")
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderedProminent)
                } footer: {
                    Text("A Standard label for user interface items, consisting of a icon with a title")
                }
                    
                }
        .navigationTitle("Label")
    }
}

#Preview {
    LabelUiView()
}
