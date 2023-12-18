//
//  UserData.swift
//  complementViews
//
//  Created by matias on 17/12/2023.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    @Published var name = ""
    @Published var age = 0
}
