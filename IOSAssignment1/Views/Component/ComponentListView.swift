//
//  ComponentListView.swift
//  IOSAssignment1
//
//  Created by Neha on 2024-11-04.
//

import SwiftUI

struct ComponentListView: View {
    @State var viewModel : ComponentListViewModel
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.listData){section in
                    Section(section.title){
                        ForEach(section.component){compo in
                            NavigationLink(destination: DetailsView(compo: compo)){
                                ComponentRows(imageName: compo.imageName, name: compo.name)
                            }
                        }
                    }
                }
            }.navigationTitle("Components")
            .searchable(text: $viewModel.searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search Component")
            
        }
    }
}

struct ComponentRows : View{
    let imageName: String
    let name: String
    
    var body: some View {
            HStack {
                Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
                .padding(6)
                .background(Color.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8))

                Text(name)
            }
        }
}

#Preview {
    ComponentListView(viewModel: ComponentListViewModel())
}


