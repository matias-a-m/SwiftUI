//
//  ListView.swift
//  complementViews
//
//  Created by matias on 16/12/2023.
//

import SwiftUI

struct ListView: View {
    
    private let programmer = [Programmer(id: 1, name: "Name 1", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill")),Programmer(id: 2, name: "Name 2", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill")),Programmer(id: 3, name: "Name 3", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill")),Programmer(id: 4, name: "Name 4", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill")),Programmer(id: 5, name: "Name 5", languages: "UIKit, Swift, SwiftUI", avatar: Image(systemName:"person.fill"))]
    
    var body: some View {
        List(programmer, id: \.id){ programmer in
            RowView(programmer: programmer)
        }
       
    }
        
}

#Preview {
    ListView()
}
