//
//  ListView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var programmersModelData = ProgrammerModelData()
    @State private var showFavorites = false // Estado para controlar el estado del Toggle
    
    private var filteredProgrammers: [Programmer]{
        return programmersModelData.programmers.filter{ programmer in
            return !showFavorites || programmer.isFavorite
        }
    }
    
    var body: some View {
            NavigationView {
                VStack {
                    Toggle(isOn: $showFavorites, label: {
                        Text("Mostrar favoritos")
                    })
                    .padding()
                    
                    // Verifica si la lista está vacía y muestra una imagen en consecuencia
                    if filteredProgrammers.isEmpty {
                        Spacer()
                        Image(systemName: "person.fill.questionmark") 
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding()
                        Text("No hay favoritos que mostrar")
                            .foregroundColor(.gray)
                        Spacer()
                        Spacer()
                    } else {
                        List(filteredProgrammers, id: \.id) { programmer in
                            NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].isFavorite)) {
                                RowView(programmer: programmer)
                            }
                        }
                        .background(Color.clear)
                    }
                }
                .navigationTitle("Programmers")
            }
        }
    }
 
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammerModelData())
    }
}

