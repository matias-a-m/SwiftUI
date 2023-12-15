//
//  ContentView.swift
//  parts_of_swiftui
//
//  Created by matias on 15/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let cornerConstant = 10.0
    
    var body: some View {
        Spacer()
        VStack(alignment: .center, spacing: 20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .tint(.white)
                .frame(maxWidth: .infinity ,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            Text("TITLE").padding()
                .font(.title)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .background(Color(.black))
                .cornerRadius(cornerConstant)
         
            Text("SUBTITLE").padding()
                .font(.title2)
                .foregroundColor(.blue)
                .background(Color(.black))
                .cornerRadius(cornerConstant)
          
            Text("TITLE 3").padding()
                .font(.title3)
                .foregroundColor(.blue)
                .background(Color(.black))
                .cornerRadius(cornerConstant)
            
            HStack(alignment: .center) {
                Spacer()
                
                Text("HEAD - LINE")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.yellow)
                    .background(Color(.black))
                    .cornerRadius(cornerConstant)
                    .frame(maxWidth: .infinity) // Ocupar el ancho disponible
                
                Spacer()
                
                Text("HEAD - LINE")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.yellow)
                    .background(Color(.black))
                    .cornerRadius(cornerConstant)
                    .frame(maxWidth: .infinity) // Ocupar el ancho disponible
                
                Spacer()
                
                Text("HEAD - LINE")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.yellow)
                    .background(Color(.black))
                    .cornerRadius(cornerConstant)
                    .frame(maxWidth: .infinity) // Ocupar el ancho disponible
                
                Spacer()
            }
         }
   
        .padding(20.0)
        .background(Color(.systemOrange))
        .cornerRadius(20.0)
       
        Spacer()
    }
    
}

#Preview {
    ContentView()
}
