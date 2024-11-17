//
//  ImageUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-07.
//

import SwiftUI

struct ImageUiView: View {
    @State private var aspectRatio = 2.0
    @State private var selectedContentMode: ContentMode = .fit
    
    var body: some View {
        List {
            // Section for the static image
            Section("Static Image") {
                GeometryReader { geometry in
                    Image("test_img")
                        .resizable()
                        .aspectRatio(aspectRatio, contentMode: selectedContentMode == .fit ? .fit : .fill)
                        .frame(height: 200)
                        .clipped()
                        .padding()
                }
                .frame(height: 200)
                
                VStack(alignment: .leading) {
                    HStack {
                        Label("Aspect Ratio", systemImage: "apple.terminal.on.rectangle")
                        Text(String(format: "%.1f", aspectRatio))
                    }
                    
                    Slider(value: $aspectRatio, in: 0.5...3, step: 0.1,
                           minimumValueLabel: Text("0.5"),
                           maximumValueLabel: Text("3"),
                           label: {
                        Text("Aspect Ratio")
                    })
                    .onChange(of: aspectRatio) {oldValue, newValue in
                        aspectRatio = newValue
                    }
                }
                .padding(.vertical)
                
                VStack(alignment: .leading) {
                    Label("Content Mode", systemImage: "photo.artframe")
                    
                    Picker("Content Mode", selection: $selectedContentMode) {
                        ForEach(ContentMode.allCases) { mode in
                            Text(mode.rawValue)
                                .tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            
            //Section for the async image
            Section {
                AsyncImage(url: URL(string: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/d6/96/36/photo4jpg.jpg?w=1400&h=1400&s=1")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(height: 200) // Height for consistency
                    case .success(let image):
                        image.resizable()
                            .scaledToFill()
                            .frame(height: 200) // Height for consistency
                            .clipped() // Ensure the image is clipped to its frame
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200) // Height for consistency
                            .clipped()
                        
                    @unknown default:
                        EmptyView()
                    }
                }
            }
            footer: {
                Text("It displays an environment dependent image as well as asynchronously loads and displays an image")
            }
        }

    }
    
    enum ContentMode: String, CaseIterable, Identifiable {
        case fit = "Fit"
        case fill = "Fill"
        
        var id: Self { self }
    }
}

#Preview {
    ImageUiView()
}
