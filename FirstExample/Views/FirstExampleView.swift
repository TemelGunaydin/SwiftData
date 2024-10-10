//
//  ContentView.swift
//  FirstExample
//
//  Created by temel gunaydin on 10.10.2024.
//

import SwiftUI
import SwiftData

struct FirstExampleView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        Button("Add Person") {
            let name = ["Mark","Lem","Chase"].randomElement()!
            let person = PersonModel(name: name)
            modelContext.insert(person)
        }
        .font(.title)
    }
}

#Preview {
    FirstExampleView()
}
