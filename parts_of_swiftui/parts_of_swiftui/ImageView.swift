//
//  ImageView.swift
//  parts_of_swiftui
//
//  Created by matias on 15/12/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        VStack {
            Spacer() // Espaciador superior
          
            // Imagen redimensionable con ajuste de escala y estilo
            Image("swiftdata").resizable()
                .scaledToFit()
                .background(Color.blue)
                .clipShape(Circle()) // Forma de círculo
                .overlay(Circle().stroke(Color.pink, lineWidth: 6.0)) // Borde del círculo
                .shadow(color: Color.gray, radius: 6) // Sombra
            
            Text("title")
                .font(.title)
                .background(Color.gray) // Fondo gris de la lista
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
        .background(Color.gray) // Fondo gris de la lista
        .padding(0) // Padding de 0 para trailing y leading
            // Lista de íconos en varias filas
        
        
        
            List(1..<10) { item in
                Spacer() // Espaciador al principio de cada fila
                HStack {
                    // Fila de tres íconos
                    Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                        .foregroundColor(Color.green)
                        .scaledToFit()
                        .padding(.all, 25.0)
                        .background(Color.black)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                        .shadow(color: Color.gray, radius: 6)
                    
                    Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                        .foregroundColor(Color.green)
                        .scaledToFit()
                        .padding(.all, 25.0)
                        .background(Color.black)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                        .shadow(color: Color.gray, radius: 6)
                    
                    Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment: .center)
                        .foregroundColor(Color.green)
                        .scaledToFit()
                        .padding(.all, 25.0)
                        .background(Color.black)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                        .shadow(color: Color.gray, radius: 6)
                }
                Spacer() // Espaciador al final de cada fila
            }
            
            // HStack de íconos
            HStack {
                Spacer()
                Image(systemName: "iphone").resizable().frame(width: 30.0, height: 50.0, alignment: .center)
                    .foregroundColor(Color.blue)
                    .scaledToFit()
                    .padding(.all, 25.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
                Spacer()
                
                Image(systemName: "iphone").resizable().frame(width: 30.0, height: 50.0, alignment: .center)
                    .foregroundColor(Color.blue)
                    .scaledToFit()
                    .padding(.all, 25.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
                Spacer()
                
                Image(systemName: "iphone").resizable().frame(width: 30.0, height: 50.0, alignment: .center)
                    .foregroundColor(Color.blue)
                    .scaledToFit()
                    .padding(.all, 25.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                    .shadow(color: Color.gray, radius: 6)
                Spacer()
            }
    }
    }


// Vista de previsualización para ImageView
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
#Preview {
    ImageView()
}
