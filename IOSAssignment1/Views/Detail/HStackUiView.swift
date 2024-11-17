//
//  HStackUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-07.
//

import SwiftUI

struct HStackUiView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .top,spacing: 8){
                ForEach(0..<12){index in
                    Text("Index \(index)")
                        .frame(height: 300)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
        Text("It arranges item horizontally.")
            .padding()
    }
}

#Preview {
    HStackUiView()
}
