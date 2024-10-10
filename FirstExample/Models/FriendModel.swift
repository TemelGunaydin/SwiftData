//
//  FriendModel.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import Foundation
import SwiftData

@Model
class FriendModel {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension FriendModel {
    @MainActor // to remove the errors from mainContext we should add this macro
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        //add your mock data
        container.mainContext.insert(FriendModel(firstName: "Jason", lastName: "Barlow"))
        container.mainContext.insert(FriendModel(firstName: "Jennie", lastName: "Wilkinson"))
        container.mainContext.insert(FriendModel(firstName: "Lauren", lastName: "Brady"))
        container.mainContext.insert(FriendModel(firstName: "Matthew", lastName: "Schultz"))
        
        
        return container
    }
}
