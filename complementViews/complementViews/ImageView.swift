//
//  ImageView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Spacer() // Espaciador superior
            Text("title")
                .font(.largeTitle)
            // Imagen redimensionable con ajuste de escala y estilo
            Image("swiftdata").resizable().frame(height: 150)
                .scaledToFit()
                .background(Color.blue)
                .clipShape(Circle()) // Forma de círculo
                .overlay(Circle().stroke(Color.pink, lineWidth: 6.0)) // Borde del círculo
                .shadow(color: Color.gray, radius: 6) // Sombra
            Text("title")
                .font(.title)
            Spacer() // Espaciador entre la imagen y la lista de íconos
            
            HStack {
                // Lista de íconos dentro de un HStack
                Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                    .foregroundColor(Color.red)
                    .scaledToFit()
                    .padding(.all, 35.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
                
                // Lista de íconos dentro de un HStack
                Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                    .foregroundColor(Color.red)
                    .scaledToFit()
                    .padding(.all, 35.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
                
                // Lista de íconos dentro de un HStack
                Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                    .foregroundColor(Color.red)
                    .scaledToFit()
                    .padding(.all, 35.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
            }
            .padding() // Padding alrededor de la lista
            .background(Color.gray) // Fondo gris de la lista
        }
    }
}

#Preview {
    ImageView()
}
