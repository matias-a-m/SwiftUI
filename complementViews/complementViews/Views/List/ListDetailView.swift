//
//  ListDetailView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.mint, lineWidth: 6.0))
                .shadow(color: Color.gray, radius: 6)
            
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)
                
                Button {
                    // Aquí actualizas el estado de favoritos al tocar el botón
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(.black)
                    }
                }
            }
            
            Text(programmer.languages)
                .font(.title)
            
            Spacer()
        }
    }
}



#Preview {
    ListDetailView(programmer: Programmer(id: 1, name: "user", languages: "languages", avatar: Image(systemName:"person.fill"), isFavorite: true), favorite: .constant(false))
}
