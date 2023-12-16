//
//  RowView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar.resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.black)
            
            VStack(alignment:.leading) {
                Text(programmer.name)
                    .font(.title)
                    .foregroundColor(.black)
                Text(programmer.languages)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            Spacer()
        }.padding()
    
    }
}

#Preview {
    RowView(programmer: Programmer(id: 1, name: "Matias", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill")))
        .previewLayout(.fixed(width: 400, height: 60))
}
