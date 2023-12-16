//
//  ContentView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack {
                MapView()
                    .frame(height: 400)
                ImageView()
                    .offset(y: -150)
                Divider()
                MyScrollView().frame(maxWidth: 600).offset(y: -150)
            }
        }
    }
}

#Preview {
    MainView()
}
