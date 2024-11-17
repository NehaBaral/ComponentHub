//
//  ProgressViewUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-16.
//

import SwiftUI

struct ProgressViewUiView: View {
    @State private var progress : Double = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        List{
            Section{
                //Circular progress
                ProgressView(label: {
                    Text("Loading")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }).progressViewStyle(.circular)
                
                //Linear progress
                ProgressView(value: progress, total: 100, label: {
                    Text("Loading...")
                        .padding(.bottom, 4)
                }, currentValueLabel: {
                    Text("\(Int(progress))%")
                        .padding(.top, 4)
                }).progressViewStyle(.linear)
                    .onReceive(timer){_ in
                        if(progress < 100){
                            progress += 1
                        }else{
                            progress = 0
                        }
                    }
            } footer: {
                Text("It shows progress towards completion of task.")
            }
        }
    }
}

#Preview {
    ProgressViewUiView()
}
