//
//  BindingView.swift
//  complementViews
//
//  Created by matias on 17/12/2023.
//

import SwiftUI

struct BindingView: View {
    
    // Binding que representa el valor compartido con la vista principal
    @Binding var value: Int
    
    @ObservedObject var user: UserData
    
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            // Botón que incrementa el valor en 2 utilizando el binding
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar datos"){
                user.name = "Adrian"
                user.age = 1000
            }
            
            NavigationLink(
                destination: EnvironmentView(),
                tag: 1,
                selection: $selection
            ) {
                
                Button("Ir a EnvironmetnView") {
                    selection = 1
                }
            }
            
        }
    }
}

#Preview {
    BindingView(value: .constant(5), user: UserData() )
}
