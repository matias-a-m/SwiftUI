//
//  EnvironmentView.swift
//  complementViews
//
//  Created by matias on 17/12/2023.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    EnvironmentView().environmentObject(UserData())
}
