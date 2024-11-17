//
//  VStackUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-12.
//

import SwiftUI

struct VStackUiView: View {
    var body: some View {
        Text("It arranges item Vertically.")
            .padding()
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .leading,spacing: 16){
                ForEach(0..<12){index in
                    Text("Index \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    VStackUiView()
}
