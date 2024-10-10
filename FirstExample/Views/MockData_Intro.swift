//
//  MockData_Intro.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import Foundation
import SwiftUI
import SwiftData

struct MockData_Intro : View {
    @Query private let friends: [FriendModel]
    var body: some View {
        List(friends) { friend in
            HStack {
                Text(friend.firstName)
                Text(friend.lastName)
            }
        }
    }
}

//We want to prevent compile errors when archiving our app.
#if DEBUG
#Preview {
    MockData_Intro()
        .modelContainer(FriendModel.preview)
}
#endif

