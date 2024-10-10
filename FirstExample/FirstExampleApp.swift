//
//  FirstExampleApp.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import SwiftUI
import SwiftData

@main
struct FirstExampleApp: App {
    var body: some Scene {
        WindowGroup {
            FirstExampleView()
                .modelContainer(for: PersonModel.self)
        }
    }
}
