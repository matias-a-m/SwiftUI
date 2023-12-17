//
//  ProgrammerModelData.swift
//  complementViews
//
//  Created by matias on 17/12/2023.
//

import SwiftUI

final class ProgrammerModelData: ObservableObject {
    @Published public var programmers = [
        Programmer(id: 0, name: "John Doe", languages: "Swift, SwiftUI, Combine", avatar: Image(systemName: "person"), isFavorite: true),
        Programmer(id: 1, name: "Alice Smith", languages: "Swift, SwiftUI, ARKit", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 2, name: "Bob Johnson", languages: "Swift, SwiftUI, Core ML", avatar: Image(systemName: "person.fill"), isFavorite: true),
        Programmer(id: 3, name: "Eva Rodriguez", languages: "Swift, SwiftUI, Metal", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 4, name: "Alex Chen", languages: "Swift, SwiftUI, RealityKit", avatar: Image(systemName: "person.fill"), isFavorite: true)
    ]
}
