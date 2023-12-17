//
//  ListView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ListView: View {
    
    @State private var showFavorites = false // Estado para controlar el estado del Toggle
    
    private let programmers = [
        Programmer(id: 1, name: "John Doe", languages: "Swift, SwiftUI, Combine", avatar: Image(systemName: "person"), isFavorite: true),
        Programmer(id: 2, name: "Alice Smith", languages: "Swift, SwiftUI, ARKit", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 3, name: "Bob Johnson", languages: "Swift, SwiftUI, Core ML", avatar: Image(systemName: "person.fill"), isFavorite: true),
        Programmer(id: 4, name: "Eva Rodriguez", languages: "Swift, SwiftUI, Metal", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 5, name: "Alex Chen", languages: "Swift, SwiftUI, RealityKit", avatar: Image(systemName: "person.fill"), isFavorite: true)
         ]
    
    // Función que filtra la lista de programadores según la condición de favoritos
    private var filteredProgrammers: [Programmer] {
        // Utiliza la función filter en la lista de programadores
        return programmers.filter { programmer in
            // Devuelve true si showFavorites es falso o si el programador es favorito
            return !showFavorites || programmer.isFavorite
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                // Toggle para controlar la visibilidad de los favoritos
                Toggle(isOn: $showFavorites, label: {
                    Text("Mostrar favoritos")
                })
                .padding()
                
                // Lista de programadores enlazada a una vista de detalle
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer).bold()) {
                        RowView(programmer: programmer)
                    }
                }
                .background(Color.black) // Aplica un fondo negro al contenido de la lista
            }
            .navigationTitle("Programmers") // Establece el título de la barra de navegación
        }
    }
}

#Preview {
    ListView()
}
