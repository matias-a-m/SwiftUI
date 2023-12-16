//
//  ScrollView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct MyScrollView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(1..<10) { index in
                        Text("Item \(index)")
                            .frame(height: 60)
                            .frame(maxWidth: .infinity) // Utiliza maxWidth: .infinity
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}


struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView() // Utiliza el nombre correcto de la estructura aquí para la previsualización
    }
}

#Preview {
    MyScrollView() // Utiliza el nombre correcto de la estructura aquí para la previsualización
}

