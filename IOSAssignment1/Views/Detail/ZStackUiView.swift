//
//  ZStackUiView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-12.
//

import SwiftUI

struct ZStackUiView: View {
    var body: some View {
        List{
            Section{
                ZStack(alignment: .top){
                    Rectangle()
                        .fill(Color.brown)
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                    Image("test_img")
                        .resizable()
                        .frame(width : 120, height : 120)
                        .clipShape(Circle())
                        .offset(y : 130)
                    
                    Text("ZStack features and its components")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(y : 70)
                }.padding(.bottom, 50)
                
                ZStack(alignment: .center){
                    RoundedRectangle(cornerRadius: 20.0)
                        .strokeBorder(.red,lineWidth: 4.0)
                        .frame(width: 250, height: 250)
                    RoundedRectangle(cornerRadius: 20.0)
                        .strokeBorder(.blue, lineWidth: 4.0)
                        .frame(width: 150, height: 150)
                    RoundedRectangle(cornerRadius: 20.0)
                        .strokeBorder(.green, lineWidth: 4.0)
                        .frame(width: 70, height: 70)
                }.padding(.vertical, 30)
                    .padding(.leading, 30)
            } footer: {
                Text("A view that overlays its subviews, aligning them in both axes.")
            }
        }
    }
}

#Preview {
    ZStackUiView()
}
