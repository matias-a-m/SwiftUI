//
//  StateView.swift
//  complementViews
//
//  Created by matias on 17/12/2023.
//

import SwiftUI

struct StateView: View {
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    @State private var showingErrorAlert = false
    @State private var errorMessage = ""

    var body: some View {
        NavigationView {
            VStack {
                // Muestra el valor actual
                Text("El valor actual es: \(value)")

                // Botón que incrementa el valor en 1
                Button("Suma 1") {
                    value += 1
                }

                // Muestra el nombre y la edad del usuario
                Text("Mi Nombre es: \(user.name)")
                Text("Mi edad es: \(user.age)")

                // Botón que intenta actualizar los datos del usuario
                Button("Actualizar datos") {
                    do {
                        try updateUser()
                    } catch {
                        // Maneja cualquier error que ocurra durante la actualización
                        handleUpdateError(error)
                    }
                }
                // Muestra una alerta si hay un error durante la actualización
                .alert(isPresented: $showingErrorAlert) {
                    Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
                }

                // NavigationLink que lleva a BindingView cuando la selección es 1
                NavigationLink(
                    destination: BindingView(value: $value, user: user),
                    tag: 1,
                    selection: $selection
                ) {
                    // Botón adicional que también activa la navegación
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
                .navigationTitle("StateView") // Título de la vista de navegación
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Estilo de navegación, en este caso, StackNavigationViewStyle
        .environmentObject(user) // Pasa el objeto UserData al entorno de la vista
    }

    // Intenta actualizar los datos del usuario
    private func updateUser() throws {
        // Verifica si la actualización es válida antes de realizarla
        guard canUpdateUserData() else {
            throw NSError(domain: "AppErrorDomain", code: 1, userInfo: [NSLocalizedDescriptionKey: "Error al actualizar los datos"])
        }

        // Realiza la actualización de datos
        user.name = "Matias"
        user.age = 36
    }

    // Realiza verificaciones según los requisitos de la aplicación
    private func canUpdateUserData() -> Bool {
        // Por ejemplo, verifica si el nombre es válido, la edad está dentro de un rango aceptable, etc.
        // Devuelve true si la actualización es válida, de lo contrario, false.
        return true
    }

    // Maneja el error durante la actualización y muestra un mensaje al usuario
    private func handleUpdateError(_ error: Error) {
        errorMessage = error.localizedDescription
        showingErrorAlert = true
    }
}


#Preview {
    StateView().environmentObject(UserData())
}
