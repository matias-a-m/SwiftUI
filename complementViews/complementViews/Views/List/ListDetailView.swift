//
//  ListDetailView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack{
            Image(systemName:"person.fill").resizable().frame(width: 200, height: 200).padding(.top)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.mint, lineWidth: 6.0))
                .shadow(color: Color.gray, radius: 6)
            
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title)
           
            Spacer()
       
        }
 
       
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 1, name: "Name 1", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill"), isFavorite: true))
}
