//
//  ContentView.swift
//  parts_of_swiftui
//
//  Created by matias on 15/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    // Constante para la esquina redondeada de los elementos de la interfaz
    let cornerConstant = 10.0
    
    // Textos utilizados en la interfaz
    let title = "TITLE"
    let subtitle = "SUBTITLE"
    let title3 = "TITLE 3"
    let headLine = "HEAD - LINE"
    
    var body: some View {
        // Estructura principal, contenedor vertical
        VStack {
            Spacer() // Espaciador para centrar contenido verticalmente
            
            // Imagen del sistema con un ícono de globo terráqueo
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .tint(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // Texto con estilo utilizando la extensión de Text
            Text(title)
                .styledText()
            
            // Otro texto con estilo, especificando fuente y color
            Text(subtitle)
                .styledText(font: .title2, color: .blue)
            
            // Otro texto con estilo diferente
            Text(title3)
                .styledText(font: .title3, color: .blue)
            
            // HStack que contiene tres Textos con el mismo estilo
            HStack {
                Spacer()
                
                // Texto con estilo de encabezado
                Text(headLine)
                    .styledText(font: .headline, color: .yellow)
                    .frame(maxWidth: .infinity) // Ocupar el ancho disponible
                
                Spacer()
                
                Text(headLine)
                    .styledText(font: .headline, color: .yellow)
                    .frame(maxWidth: .infinity)
                
                Spacer()
                
                Text(headLine)
                    .styledText(font: .headline, color: .yellow)
                    .frame(maxWidth: .infinity)
                
                Spacer()
            }
            
            Spacer() // Espaciador para centrar contenido verticalmente
        }
        .padding(20.0) // Padding para el contenido dentro del contenedor
        .background(Color(.systemOrange)) // Fondo de color naranja del contenedor
        .cornerRadius(0.0) // Esquinas redondeadas del contenedor
    }
    
}

// Extensión de Text para aplicar un estilo común
extension Text {
    func styledText(font: Font = .title, color: Color = .white) -> some View {
        self.padding() // Añadir padding alrededor del Texto
            .font(font) // Establecer la fuente del Texto
            .foregroundColor(color) // Establecer el color del Texto
            .background(Color(.black)) // Fondo negro del Texto
            .cornerRadius(10.0) // Esquinas redondeadas del Texto
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Vista de previsualización para ContentView
#Preview {
    ContentView()
}

